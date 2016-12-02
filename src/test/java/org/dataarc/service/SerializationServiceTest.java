package org.dataarc.service;

import java.io.IOException;

import org.dataarc.core.query.FilterQuery;
import org.dataarc.core.query.MatchType;
import org.dataarc.core.query.QueryPart;
import org.dataarc.core.service.SerializationService;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SerializationServiceTest {

    SerializationService serializationService = new SerializationService();
    Logger logger = LoggerFactory.getLogger(getClass());

    
    @Test
    public void testSimpleSerialization() throws IOException {
        FilterQuery fq = new FilterQuery();
        fq.getConditions().add(new QueryPart("field", "value", MatchType.EQUALS));
        String result = serializationService.serialize(fq);
        logger.debug(result);
        FilterQuery query2 = serializationService.deSerialize(result);
        logger.debug("{}", query2);
    }
}