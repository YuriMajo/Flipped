package com.now.springcloud.flipped.ribbon.server;

import config.ServiceMainRibbonConfiguration;
import org.springframework.cloud.netflix.ribbon.RibbonClient;
import org.springframework.context.annotation.Configuration;

@Configuration
@RibbonClient(name = "flipped-main",configuration = ServiceMainRibbonConfiguration.class)
public class RibbonMainConfig {
}
