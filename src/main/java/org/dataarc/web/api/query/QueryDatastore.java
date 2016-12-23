package org.dataarc.web.api.query;

import org.dataarc.bean.DataEntry;
import org.dataarc.core.query.FilterQuery;
import org.dataarc.core.service.QueryService;
import org.dataarc.web.api.AbstractRestController;
import org.dataarc.web.api.schema.UrlConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QueryDatastore extends AbstractRestController {

    @Autowired
    private QueryService queryService;
    
    @RequestMapping(path=UrlConstants.QUERY_DATASTORE, method = RequestMethod.POST)
    public Iterable<DataEntry> queryDatastore(@RequestParam(value = "schema", required = true) String schema, @RequestBody(required=true) FilterQuery fq) throws Exception {
        logger.debug("Query: {} ", fq);
        return queryService.getMatchingRows(schema, fq);
        
    }
}