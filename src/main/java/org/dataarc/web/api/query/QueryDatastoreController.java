package org.dataarc.web.api.query;

import java.util.ArrayList;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.dataarc.bean.DataEntry;
import org.dataarc.core.query.FilterQuery;
import org.dataarc.core.service.QueryService;
import org.dataarc.core.service.UserService;
import org.dataarc.datastore.mongo.FilterQueryResult;
import org.dataarc.web.UrlConstants;
import org.dataarc.web.api.AbstractRestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Secured(UserService.EDITOR_ROLE)
public class QueryDatastoreController extends AbstractRestController {

    @Autowired
    private QueryService queryService;

    @RequestMapping(path = UrlConstants.QUERY_DATASTORE, method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public FilterQueryResult queryDatastore(@RequestBody(required = true) FilterQuery fq) throws Exception {
        logger.debug("Query: {} ", fq);
        if (fq == null) {
            return new FilterQueryResult(fq);
        }

        if (CollectionUtils.isEmpty(fq.getConditions())) {
            return new FilterQueryResult(fq);
        }

        // default query for blank from UI
        if (fq.getConditions().size() == 1 && fq.getConditions().get(0).getType() == null && StringUtils.isBlank(fq.getConditions().get(0).getFieldName())) {
            return new FilterQueryResult(fq);

        }

        try {
            return queryService.getMatchingRows(fq, 10);
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("{}", e, e);
            throw e;
        }

    }
}
