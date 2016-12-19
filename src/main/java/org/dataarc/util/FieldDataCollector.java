package org.dataarc.util;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;
import org.dataarc.bean.schema.FieldType;
import org.dataarc.bean.schema.Value;

public class FieldDataCollector {

    private String schemaName;
    private Set<String> fields = new HashSet<>();
    private Map<String, FieldType> fieldTypes = new HashMap<>();
    private Map<String, Map<Object, Long>> uniqueValues = new HashMap<>();

    public FieldDataCollector(String schema) {
        this.setSchemaName(schema);
    }

    public void add(String parent, String key, Object value) {
        if (value == null ||
                value instanceof String && StringUtils.isBlank((CharSequence) value) ||
                value instanceof Collection && CollectionUtils.isEmpty((Collection) value) ||
                value instanceof Map && MapUtils.isEmpty((Map) value)) {
            return;
        }

        FieldType type = FieldType.STRING;
        if (value instanceof Number || value instanceof String && NumberUtils.isNumber((String) value)) {
            type = FieldType.NUMBER;
        }

        if (value instanceof Date) {
            type = FieldType.DATE;
        }

        if (value instanceof Date || value instanceof String || value instanceof Number) {
            Map<Object, Long> set = uniqueValues.getOrDefault(key, new HashMap<>());
            if (value instanceof String) {
                String left = StringUtils.left((String) value, Value.VALUE_LENGTH - 1);
                Long count = set.getOrDefault(left, 0L);
                set.put(left, count + 1);
            } else {
                Long count = set.getOrDefault(value, 0L);
                set.put(value, count + 1);
            }
            uniqueValues.put(key, set);
        }

        String path = key;
        if (StringUtils.isNotBlank(parent)) {
            path = String.format("%s.%s", parent, key);
        }
        getFields().add(path);
        FieldType _type = fieldTypes.getOrDefault(path, type);
        if (type == FieldType.NUMBER && _type == FieldType.STRING) {
            type = FieldType.STRING;
        }
        fieldTypes.put(path, type);
    }

    public Set<String> getFields() {
        return fields;
    }

    public void setFields(Set<String> fields) {
        this.fields = fields;
    }

    public String getSchemaName() {
        return schemaName;
    }

    public void setSchemaName(String schemaName) {
        this.schemaName = schemaName;
    }

    public FieldType getType(String field) {
        return fieldTypes.get(field);
    }

    public Map<Object, Long> getUniqueValues(String field) {
        return uniqueValues.getOrDefault(field, new HashMap<>());
    }

}
