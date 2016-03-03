package com.fzb.zrlog.plugin.mail;


import com.fzb.zrlog.plugin.client.NioClient;
import com.fzb.zrlog.plugin.mail.controller.MailController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Start {
    /**
     * @param args
     */
    public static void main(String[] args) throws IOException {
        List<Class> classList = new ArrayList<>();
        classList.add(MailController.class);
        new NioClient().connectServerByProperties(args, classList, "/plugin.properties", EmailPluginAction.class);
    }
}

