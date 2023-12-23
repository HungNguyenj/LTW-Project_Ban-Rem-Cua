package com.curtainshop.database;

import org.jdbi.v3.core.Jdbi;
import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.SQLException;

public class JDBIConnector {
    private static Jdbi jdbi;

    private JDBIConnector(){

    }
    public static Jdbi get() {
        if (jdbi == null)
            makeConnect();
        return jdbi;
    }

    private static void makeConnect(){
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL("jdbc:mysql://" + DBProperties.getDbHost() + ":" + DBProperties.getDbPort() + "/"
        + DBProperties.getDbName());
        dataSource.setUser(DBProperties.getUsername());
        dataSource.setPassword(DBProperties.getPassword());

        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        jdbi = Jdbi.create(dataSource);

    }
}
