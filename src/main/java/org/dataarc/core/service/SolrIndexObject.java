package org.dataarc.core.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.solr.client.solrj.beans.Field;
import org.dataarc.bean.DataEntry;
import org.dataarc.core.legacy.search.IndexFields;
import org.springframework.data.annotation.Id;
import org.springframework.data.solr.core.mapping.SolrDocument;

import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.GeometryFactory;
import com.vividsolutions.jts.geom.Point;
import com.vividsolutions.jts.geom.PrecisionModel;

@SolrDocument
public class SolrIndexObject {

    @Id
    public String id;

    @Field
    private Integer start;
    @Field
    private Integer end;

    @Field
    private String title;

    @Field
    private String source;

    @Field
    private Date dateCreated;
    @Field(child = true, value = "properties")
    private Map<String, Object> properties = new HashMap<>();
    @Field(child = true, value = IndexFields.INDICATOR)
    private Set<String> indicators = new HashSet<>();
    @Field(child = true, value = IndexFields.INDICATOR_2ND)
    private Set<String> indicators2 = new HashSet<>();
    @Field(child = true, value = IndexFields.TOPIC)
    private Set<String> topics = new HashSet<>();
    @Field(child = true, value = IndexFields.TOPIC_ID)
    private Set<String> topicIdentifiers = new HashSet<>();

    @Field(value=IndexFields.KEYWORD) 
    private List<String> values = new ArrayList<>();

    @Field(value=IndexFields.POINT)
    private Point position;
    private final GeometryFactory geometryFactory = new GeometryFactory(new PrecisionModel(), 4326);

    public SolrIndexObject(DataEntry entry) {
        if (entry.getPosition() != null) {
            position = geometryFactory.createPoint(new Coordinate(entry.getPosition().getX(), entry.getPosition().getY()));
        }

        id = entry.getId();
        start = entry.getStart();
        end = entry.getEnd();
        source = entry.getSource();
        indicators = entry.getIndicators();
        topics = entry.getTopics();
        topicIdentifiers = entry.getTopicIdentifiers();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getEnd() {
        return end;
    }

    public void setEnd(Integer end) {
        this.end = end;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Map<String, Object> getProperties() {
        return properties;
    }

    public void setProperties(Map<String, Object> properties) {
        this.properties = properties;
    }

    public Set<String> getIndicators() {
        return indicators;
    }

    public void setIndicators(Set<String> indicators) {
        this.indicators = indicators;
    }

    public Set<String> getIndicators2() {
        return indicators2;
    }

    public void setIndicators2(Set<String> indicators2) {
        this.indicators2 = indicators2;
    }

    public Set<String> getTopics() {
        return topics;
    }

    public void setTopics(Set<String> topics) {
        this.topics = topics;
    }

    public Set<String> getTopicIdentifiers() {
        return topicIdentifiers;
    }

    public void setTopicIdentifiers(Set<String> topicIdentifiers) {
        this.topicIdentifiers = topicIdentifiers;
    }

    public Point getPosition() {
        return position;
    }

    public void setPosition(Point position) {
        this.position = position;
    }

}