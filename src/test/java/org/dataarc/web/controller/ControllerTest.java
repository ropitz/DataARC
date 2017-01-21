package org.dataarc.web.controller;


import org.dataarc.AbstractServiceTest;
import org.dataarc.core.query.FilterQuery;
import org.dataarc.core.query.MatchType;
import org.dataarc.core.query.QueryPart;
import org.dataarc.web.api.schema.UrlConstants;
import org.dataarc.web.config.DataArcWebConfig;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;

@WebAppConfiguration
@ContextConfiguration(classes = { DataArcWebConfig.class })
public class ControllerTest extends AbstractServiceTest {

    protected MockMvc mockMvc;

    @Autowired
    private WebApplicationContext wac;

    @Before
    public void setUp() {
        mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
    }

    @Test
    public void testSchemaFields() throws Exception {
        mockMvc.perform(MockMvcRequestBuilders.get(UrlConstants.SCHEMA_LIST_FIELDS + "?schema=SEAD"))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().contentType(MediaType.APPLICATION_JSON_UTF8));
    }

    @Test
    public void testQuery() throws Exception {
        String schema = "SEAD";
        FilterQuery query = new FilterQuery();
        query.getConditions().add(new QueryPart("sites.SiteCode", "SITE000572", MatchType.CONTAINS));
        query.setSchema(schema);

        mockMvc.perform(MockMvcRequestBuilders.post(UrlConstants.QUERY_DATASTORE).content(asJsonString(query)).contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(MockMvcResultMatchers.status().isOk())
                .andExpect(MockMvcResultMatchers.content().contentType(MediaType.APPLICATION_JSON_UTF8));

    }

}