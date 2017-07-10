package org.dataarc.web.api.admin;

import org.dataarc.core.search.SolrIndexingService;
import org.dataarc.core.service.IndicatorService;
import org.dataarc.web.UrlConstants;
import org.dataarc.web.api.AbstractRestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdminApiController extends AbstractRestController {

    @Autowired
    private IndicatorService indicatorService;

    private SolrIndexingService indexingService;

    @RequestMapping(path = UrlConstants.REINDEX, method = RequestMethod.POST)
    public void reindex() throws Exception {
        indicatorService.applyIndicators();
        indexingService.reindex();
    }

}
