package xsk.rtmp.controller;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCallback;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import xsk.rtmp.DBUtil;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;

@Controller
public class RTMPController {
    JDBC jdbc = new JDBC();
    @RequestMapping(value = "/publish", method = RequestMethod.POST)
    @ResponseBody
    public String publish(@RequestBody String params) throws SQLException {
        System.out.println(params);
        jdbc.add("publish", params, new String[]{"call"});
        return "index";
    }

    @RequestMapping(value = "/play", method = RequestMethod.POST)
    @ResponseBody
    public String play(@RequestBody String params) throws SQLException {
        System.out.println(params);
        jdbc.add("play", params, new String[]{"call"});
        return "index";
    }

    @RequestMapping(value = "/record_done", method = RequestMethod.POST)
    @ResponseBody
    public String record_done(@RequestBody String params) throws SQLException {


        try {
            PrintWriter pw = new PrintWriter(new FileWriter("record_done.txt"));
            pw.append(params);

            pw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }


        jdbc.addJieMu(params);

        return "index";
    }
}

class JDBC {

    private static final String URL = "jdbc:mysql://localhost:3306/TEST?useUnicode=true&characterEncoding=UTF-8";
    private static final String NAME = "root";
    private static final String PASSWORD = "";

    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    private DriverManagerDataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    public JDBC() {
        dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setPassword(PASSWORD);
        dataSource.setUsername(NAME);
        dataSource.setUrl(URL);

        namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public int addJieMu(String play_done) {

        return add("jiemu", play_done, new String[]{"call"});
    }

    public int add(String tableName, String rtmp_response, String[] ignoreColus) {
        List<String> keys = new ArrayList<>();
        Map<String, Object> params = new HashMap<>();

        String[] items = rtmp_response.split("&");
        Map<String, String> map = new HashMap<>();
        for (String item : items) {
            String[] comps = item.split("=");
            if (comps.length != 2) {
                continue;
            }
            String key = comps[0];

            if (Arrays.asList(ignoreColus).contains(key)) {
                continue;
            }
            String value = comps[1];
            params.put(key, value);
            keys.add(key);
        }


        StringBuffer buffer = new StringBuffer();
        StringBuffer valueBuffer = new StringBuffer();
        for (String item : keys) {
            buffer.append(item + " ,");
            valueBuffer.append(":" + item + ",");
        }
        String sql = "insert into " + tableName + "(" + buffer.substring(0, buffer.length() - 2) + ") values(" + valueBuffer.substring(0, valueBuffer.length() - 1) + ")";
        System.out.println(sql);
        int result = -1;
        try {
            result = namedParameterJdbcTemplate.update(sql, params);
        } catch (DataAccessException e) {
            e.printStackTrace();
        } finally {
            return result;
        }

    }
}