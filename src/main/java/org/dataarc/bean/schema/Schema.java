package org.dataarc.bean.schema;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.dataarc.bean.AbstractPersistable;
import org.dataarc.util.View;
import org.hibernate.annotations.Type;

import com.fasterxml.jackson.annotation.JsonView;

/**
 * Representation of a data source in DataARC, it includes some basic information such as category and name, as well as places for HandlebarJS templates and
 * URLs for linking.
 * 
 * @author abrin
 *
 */
@Entity
public class Schema extends AbstractPersistable {

    private static final long serialVersionUID = -5169843883562531248L;

    @Column(length = 100)
    @JsonView(View.Schema.class)
    private String name;

    @Column(length = 100)
    @JsonView(View.Schema.class)
    @Enumerated(EnumType.STRING)
    private CategoryType category;

    @JsonView(View.Schema.class)
    @Column(length = 100, name = "display_name")
    private String displayName;

    @Column(length = 1024)
    @JsonView(View.Schema.class)
    private String url;

    @Column(length = 1024, name = "logourl")
    @JsonView(View.Schema.class)
    private String logoUrl;

    @Column()
    @Lob
    @JsonView(View.Schema.class)
    @Type(type = "org.hibernate.type.TextType")
    private String description;

    @Column(name = "title_template")
    @Lob
    @Type(type = "org.hibernate.type.TextType")
    private String titleTemplate;

    @Column(name = "result_template")
    @Lob
    @Type(type = "org.hibernate.type.TextType")
    private String resultTemplate;

    @Column(name = "link_template")
    @Lob
    @Type(type = "org.hibernate.type.TextType")
    private String linkTemplate;

    @Column(name = "date_created", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateCreated;

    @Column()
    @JsonView(View.Schema.class)
    private Integer rows;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
    @JoinColumn(name = "schema_id", nullable = false)
    @JsonView(View.Schema.class)
    private Set<SchemaField> fields = new HashSet<>();

    public String getName() {
        return name;
    }

    public void setName(String source) {
        this.name = source;
    }

    public Set<SchemaField> getFields() {
        return fields;
    }

    public void setFields(Set<SchemaField> fields) {
        this.fields = fields;
    }

    public SchemaField getFieldByName(String name) {
        for (SchemaField fld : fields) {
            if (fld.getDisplayName().equals(name) || fld.getName().equals(name)) {
                return fld;
            }
        }
        return null;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public CategoryType getCategory() {
        return category;
    }

    public void setCategory(CategoryType category) {
        this.category = category;
    }

    public String getResultTemplate() {
        return resultTemplate;
    }

    public void setResultTemplate(String resultTemplate) {
        this.resultTemplate = resultTemplate;
    }

    public String getTitleTemplate() {
        return titleTemplate;
    }

    public void setTitleTemplate(String titleTemplate) {
        this.titleTemplate = titleTemplate;
    }

    public String getLinkTemplate() {
        return linkTemplate;
    }

    public void setLinkTemplate(String linkTemplate) {
        this.linkTemplate = linkTemplate;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getLogoUrl() {
        return logoUrl;
    }

    public void setLogoUrl(String logoUrl) {
        this.logoUrl = logoUrl;
    }

    @Transient
    public Long getStartFieldId() {
        for (SchemaField field : getFields()) {
            if (field.isStartField()) {
                return field.getId();
            }
        }
        return null;
    }

    @Transient
    public Long getEndFieldId() {
        for (SchemaField field : getFields()) {
            if (field.isEndField()) {
                return field.getId();
            }
        }
        return null;
    }

    @Transient
    public Long getTextFieldId() {
        for (SchemaField field : getFields()) {
            if (field.isTextDateField()) {
                return field.getId();
            }
        }
        return null;
    }

}
