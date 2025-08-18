package com.vitorlfreitas.store;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Service("sms")
public class SMSNotificationService implements NotificationService {

    @Override
    public void send(String message) {
        System.out.println("SMS sent");
        System.out.println(message);
    }
}
