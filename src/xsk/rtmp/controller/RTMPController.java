package xsk.rtmp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import xsk.rtmp.DBUtil;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

@Controller
public class RTMPController {
    Connection connection = DBUtil.getConnection();

    @RequestMapping(value = "/publish", method = RequestMethod.POST)
    @ResponseBody
//    public String record_done(@RequestParam String call, @RequestParam String recorder, @RequestParam String name, @RequestParam String tcurl, @RequestParam String path, @RequestParam String addr, @RequestParam String app, @RequestParam int bytes_in, @RequestParam int clientid, @RequestParam int bytes_out) {
    public String publish(@RequestBody String params) throws SQLException {
        String[] items = params.split("&");
        Map<String, String> map = new HashMap<>();
        for (String item : items) {
            String[] comps = item.split("=");
            String key = comps[0];
            String value = comps[1];
            map.put(key, value);
        }
        try {
            PrintWriter pw = new PrintWriter(new FileWriter("publish.txt"));
            pw.append(map.toString());

            pw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "index";
    }

    @RequestMapping(value = "/play", method = RequestMethod.POST)
    @ResponseBody
//    public String record_done(@RequestParam String call, @RequestParam String recorder, @RequestParam String name, @RequestParam String tcurl, @RequestParam String path, @RequestParam String addr, @RequestParam String app, @RequestParam int bytes_in, @RequestParam int clientid, @RequestParam int bytes_out) {
    public String play(@RequestBody String params) throws SQLException {
        String[] items = params.split("&");
        Map<String, String> map = new HashMap<>();
        for (String item : items) {
            String[] comps = item.split("=");
            String key = comps[0];
            String value = comps[1];
            map.put(key, value);
        }
        try {
            PrintWriter pw = new PrintWriter(new FileWriter("play.txt"));
            pw.append(map.toString());

            pw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return "index";
    }

    @RequestMapping(value = "/record_done", method = RequestMethod.POST)
    @ResponseBody
//    public String record_done(@RequestParam String call, @RequestParam String recorder, @RequestParam String name, @RequestParam String tcurl, @RequestParam String path, @RequestParam String addr, @RequestParam String app, @RequestParam int bytes_in, @RequestParam int clientid, @RequestParam int bytes_out) {
    public String record_done(@RequestBody String params) throws SQLException {

        String[] items = params.split("&");
        Map<String, String> map = new HashMap<>();
        for (String item : items) {
            String[] comps = item.split("=");
            String key = comps[0];
            String value = comps[1];
            map.put(key, value);
        }
        try {
            PrintWriter pw = new PrintWriter(new FileWriter("record_done.txt"));
            pw.append(map.toString());

            pw.close();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        try {
            Statement statement = connection.createStatement();
            String[] itemNames = new String[]{"call_path", "app", "path", "tcurl", "recorder", "clientid", "bytes_out", "bytes_in", "name", "addr"};
            StringBuffer buffer = new StringBuffer();
            for (String item : itemNames) {
                buffer.append(item + " ,");
            }
            String sql = "insert into jiemu(" + buffer.substring(0, buffer.length() - 2) + ") values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement psmt = connection.prepareStatement(sql);
            for (int i = 0; i < itemNames.length; i++) {
                if (i == 0) {

                    psmt.setObject(i + 1, map.get("call"));

                    continue;
                }
                psmt.setObject(i + 1, map.get(itemNames[i]));
            }
            psmt.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "index";
    }
}
