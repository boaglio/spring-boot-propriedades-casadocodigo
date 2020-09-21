--
-- Fernando Boaglio
-- 2016-12
--
drop table propriedade IF EXISTS;
CREATE TABLE propriedade (
id MEDIUMINT NOT NULL AUTO_INCREMENT,
categoria VARCHAR(200),
subcategoria VARCHAR(200),
nome VARCHAR(200),
valor VARCHAR(512) default '',
descricao VARCHAR(1000),
PRIMARY KEY (id),
UNIQUE INDEX nome_unique (nome ASC));
-- ----------------------------------------
-- CORE PROPERTIES
-- ----------------------------------------
-- BANNER
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.charset','UTF-8','Banner file encoding'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.location','classpath:banner.txt','Banner file location'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.image.location','classpath:banner.gif','Banner image file location (jpg/png can also be used)'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.image.width','','Width of the banner image in chars (default 76)'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.image.height','','Height of the banner image in chars (default based on image height)'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.image.margin','','Left hand image margin in chars (default 2)'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','banner.image.invert','','If images should be inverted for dark terminal themes (default false)'); 
-- LOGGING
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.config','','Location of the logging configuration file. For instance classpath:logback.xml for Logback'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.exception-conversion-word','%wEx','Conversion word used when logging exceptions'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.file','','Log file name. For instance myapp.log'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.level.*','','Log levels severity mapping. For instance logging.level.org.springframework=DEBUG'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.path','','Location of the log file. For instance /var/log'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.pattern.console','','Appender pattern for output to the console. Only supported with the default logback setup'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.pattern.file','','Appender pattern for output to the file. Only supported with the default logback setup'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.pattern.level','','Appender pattern for log level (default %5p). Only supported with the default logback setup'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','LOGGING','logging.register-shutdown-hook','false','Register a shutdown hook for the logging system when it is initialized'); 
-- AOP
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','AOP','spring.aop.auto','true','Add @EnableAspectJAutoProxy'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','AOP','spring.aop.proxy-target-class','false','Whether subclass-based (CGLIB) proxies are to be created (true) as opposed to standard Java interface-based proxies (false)'); 
-- IDENTITY (ContextIdApplicationContextInitializer)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','IDENTITY','spring.application.index','','Application index'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','IDENTITY','spring.application.name','','Application name'); 
-- ADMIN (SpringApplicationAdminJmxAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','ADMIN','spring.application.admin.enabled','false','Enable admin features for the application'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','ADMIN','spring.application.admin.jmx-name','org.springframework.boot:type=Admin,name=SpringApplication','JMX name of the application admin MBean'); 
-- AUTO-CONFIGURATION
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','AUTO-CONFIGURATION','spring.autoconfigure.exclude','','Auto-configuration classes to exclude'); 
-- SPRING CORE
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CORE','spring.beaninfo.ignore','true','Skip search of BeanInfo classes'); 
-- SPRING CACHE (CacheProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.cache-names','','Comma-separated list of cache names to create if supported by the underlying cache manager'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.caffeine.spec','','The spec to use to create caches. Check CaffeineSpec for more details on the spec format'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.couchbase.expiration','0','Entry expiration in milliseconds. By default the entries never expire'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.ehcache.config','','The location of the configuration file to use to initialize EhCache'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.guava.spec','','The spec to use to create caches. Check CacheBuilderSpec for more details on the spec format'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.hazelcast.config','','The location of the configuration file to use to initialize Hazelcast'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.infinispan.config','','The location of the configuration file to use to initialize Infinispan'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.jcache.config','','The location of the configuration file to use to initialize the cache manager'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.jcache.provider','','Fully qualified name of the CachingProvider implementation to use to retrieve the JSR-107 compliant cache manager. Only needed if more than one JSR-107 implementation is available on the classpath'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CACHE','spring.cache.type','','Cache type, auto-detected according to the environment by default'); 
-- SPRING CONFIG - using environment property only (ConfigFileApplicationListener)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CONFIG','spring.config.location','','Config file locations'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SPRING CONFIG','spring.config.name','application','Config file name'); 
-- HAZELCAST (HazelcastProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','HAZELCAST','spring.hazelcast.config','','The location of the configuration file to use to initialize Hazelcast'); 
-- PROJECT INFORMATION (ProjectInfoProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','PROJECT INFORMATION','spring.info.build.location','classpath:META-INF/build-info.properties','Location of the generated build-info.properties file'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','PROJECT INFORMATION','spring.info.git.location','classpath:git.properties','Location of the generated git.properties file'); 
-- JMX
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','JMX','spring.jmx.default-domain','','JMX domain name'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','JMX','spring.jmx.enabled','true','Expose management beans to the JMX domain'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','JMX','spring.jmx.server','mbeanServer','MBeanServer bean name'); 
-- Email (MailProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.default-encoding','UTF-8','Default MimeMessage encoding'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.host','','SMTP server host. For instance smtp.example.com'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.jndi-name','','Session JNDI name. When set, takes precedence to others mail settings'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.password','','Login password of the SMTP server'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.port','','SMTP server port'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.properties.*','','Additional JavaMail session properties'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.protocol','smtp','Protocol used by the SMTP server'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.test-connection','false','Test that the mail server is available on startup'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','Email','spring.mail.username','','Login user of the SMTP server'); 
-- APPLICATION SETTINGS (SpringApplication)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','APPLICATION SETTINGS','spring.main.banner-mode','console','Mode used to display the banner when the application runs'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','APPLICATION SETTINGS','spring.main.sources','','Sources (class name, package name or XML resource location) to include in the ApplicationContext'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','APPLICATION SETTINGS','spring.main.web-environment','','Run the application in a web environment (auto-detected by default)'); 
-- FILE ENCODING (FileEncodingApplicationListener)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','BANNER','spring.mandatory-file-encoding','','Expected character encoding the application must use'); 
-- INTERNATIONALIZATION (MessageSourceAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','INTERNATIONALIZATION','spring.messages.always-use-message-format','false','Set whether to always apply the MessageFormat rules, parsing even messages without arguments'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','INTERNATIONALIZATION','spring.messages.basename','messages','Comma-separated list of basenames, each following the ResourceBundle convention'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','INTERNATIONALIZATION','spring.messages.cache-seconds','-1','Loaded resource bundle files cache expiration, in seconds. When set to -1, bundles are cached forever'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','INTERNATIONALIZATION','spring.messages.encoding','UTF-8','Message bundles encoding'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','INTERNATIONALIZATION','spring.messages.fallback-to-system-locale','true','Set whether to fall back to the system Locale if no files for a specific Locale have been found'); 
-- OUTPUT
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','OUTPUT','spring.output.ansi.enabled','detect','Configure the ANSI output'); 
-- PID FILE (ApplicationPidFileWriter)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','PID FILE','spring.pid.fail-on-write-error','','Fail if ApplicationPidFileWriter is used but it cannot write the PID file'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','PID FILE','spring.pid.file','','Location of the PID file to write (if ApplicationPidFileWriter is used)'); 
-- PROFILES
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','PROFILES','spring.profiles.active','','Comma-separated list of active profiles'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','PROFILES','spring.profiles.include','','Unconditionally activate the specified comma separated profiles'); 
-- SENDGRID (SendGridAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SENDGRID','spring.sendgrid.api-key','','SendGrid api key (alternative to username/password)'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SENDGRID','spring.sendgrid.username','','SendGrid account username'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SENDGRID','spring.sendgrid.password','','SendGrid account password'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SENDGRID','spring.sendgrid.proxy.host','','SendGrid proxy host'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('CORE PROPERTIES','SENDGRID','spring.sendgrid.proxy.port','','SendGrid proxy port'); 
-- ----------------------------------------
-- WEB PROPERTIES
-- ----------------------------------------
-- EMBEDDED SERVER CONFIGURATION (ServerProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.address','','Network address to which the server should bind to'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.compression.enabled','false','If response compression is enabled'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.compression.excluded-user-agents','','List of user-agents to exclude from compression'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.compression.mime-types','','Comma-separated list of MIME types that should be compressed. For instance text/html,text/css,application/json'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.compression.min-response-size','','Minimum response size that is required for compression to be performed. For instance 2048'); 
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.connection-timeout','','Time in milliseconds that connectors will wait for another HTTP request before closing the connection. When not set, the connector''s container-specific default will be used. Use a value of -1 to indicate no (i.e. infinite) timeout');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.context-parameters.*','','Servlet context init parameters. For instance server.context-parameters.a=alpha');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.context-path','','Context path of the application');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.display-name','application','Display name of the application');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.max-http-header-size','0','Maximum size in bytes of the HTTP message header');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.max-http-post-size','0','Maximum size in bytes of the HTTP post content');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.error.include-stacktrace','never','When to include a "stacktrace" attribute');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.error.path','/error','Path of the error controller');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.error.whitelabel.enabled','true','Enable the default error page displayed in browsers in case of a server error');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.jetty.acceptors','','Number of acceptor threads to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.jetty.selectors','','Number of selector threads to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.jsp-servlet.class-name','org.apache.jasper.servlet.JspServlet','The class name of the JSP servlet');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.jsp-servlet.init-parameters.*','','Init parameters used to configure the JSP servlet');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.jsp-servlet.registered','true','Whether or not the JSP servlet is registered');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.port','8080','Server HTTP port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.server-header','','Value to use for the Server response header (no header is sent if empty)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.servlet-path','/','Path of the main dispatcher servlet');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.use-forward-headers','','If X-Forwarded-* headers should be applied to the HttpRequest');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.comment','','Comment for the session cookie');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.domain','','Domain for the session cookie');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.http-only','','"HttpOnly" flag for the session cookie');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.max-age','','Maximum age of the session cookie in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.name','','Session cookie name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.path','','Path of the session cookie');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.cookie.secure','','"Secure" flag for the session cookie');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.persistent','false','Persist session data between restarts');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.store-dir','','Directory used to store session data');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.timeout','','Session timeout in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.session.tracking-modes','','Session tracking modes (one or more of the following: "cookie", "url", "ssl")');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.ciphers','','Supported SSL ciphers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.client-auth','','Whether client authentication is wanted ("want") or needed ("need"). Requires a trust store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.enabled','','Enable SSL support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.enabled-protocols','','Enabled SSL protocols');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.key-alias','','Alias that identifies the key in the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.key-password','','Password used to access the key in the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.key-store','','Path to the key store that holds the SSL certificate (typically a jks file)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.key-store-password','','Password used to access the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.key-store-provider','','Provider for the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.key-store-type','','Type of the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.protocol','TLS','SSL protocol to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.trust-store','','Trust store that holds SSL certificates');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.trust-store-password','','Password used to access the trust store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.trust-store-provider','','Provider for the trust store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.ssl.trust-store-type','','Type of the trust store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.accesslog.directory','logs','Directory in which log files are created. Can be relative to the tomcat base dir or absolute');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.accesslog.enabled','false','Enable access log');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.accesslog.pattern','common','Format pattern for access logs');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.accesslog.prefix','access_log','Log file name prefix');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.accesslog.rename-on-rotate','false','Defer inclusion of the date stamp in the file name until rotate time');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.accesslog.suffix','.log','Log file name suffix');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.background-processor-delay','30','Delay in seconds between the invocation of backgroundProcess methods');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.basedir','','Tomcat base directory. If not specified a temporary directory will be used');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.internal-proxies','10\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}|\\192\\.168\\.\\d{1,3}\\.\\d{1,3}|\\169\\.254\\.\\d{1,3}\\.\\d{1,3}|\\127\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}|\\172\\.1[6-9]{1}\\.\\d{1,3}\\.\\d{1,3}|\\172\\.2[0-9]{1}\\.\\d{1,3}\\.\\d{1,3}|\\172\\.3[0-1]{1}\\.\\d{1,3}\\.\\d{1,3}','regular expression matching trusted IP addresses');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.max-threads','0','Maximum amount of worker threads');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.min-spare-threads','0','Minimum amount of worker threads');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.port-header','X-Forwarded-Port','Name of the HTTP header used to override the original port value');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.protocol-header','','Header that holds the incoming protocol, usually named "X-Forwarded-Proto"');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.protocol-header-https-value','https','Value of the protocol header that indicates that the incoming request uses SSL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.redirect-context-root','','Whether requests to the context root should be redirected by appending a / to the path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.remote-ip-header','','Name of the http header from which the remote ip is extracted. For instance X-FORWARDED-FOR');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.tomcat.uri-encoding','UTF-8','Character encoding to use to decode the URI');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.accesslog.dir','','Undertow access log directory');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.accesslog.enabled','false','Enable access log');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.accesslog.pattern','common','Format pattern for access logs');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.accesslog.prefix','access_log.','Log file name prefix');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.accesslog.suffix','log','Log file name suffix');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.buffer-size','','Size of each buffer in bytes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.buffers-per-region','','Number of buffer per region');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.direct-buffers','','Allocate buffers outside the Java heap');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.io-threads','','Number of I/O threads to create for the worker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','server.undertow.worker-threads','','Number of worker threads');
-- FREEMARKER (FreeMarkerAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.allow-request-override','false','Set whether HttpServletRequest attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.allow-session-override','false','Set whether HttpSession attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.cache','false','Enable template caching');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.charset','UTF-8','Template encoding');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.check-template-location','true','Check that the templates location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.content-type','text/html','Content-Type value');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.enabled','true','Enable MVC view resolution for this technology');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.expose-request-attributes','false','Set whether all request attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.expose-session-attributes','false','Set whether all HttpSession attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.expose-spring-macro-helpers','true','Set whether to expose a RequestContext for use by Spring''s macro library, under the name "springMacroRequestContext"');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.prefer-file-system-access','true','Prefer file system access for template loading. File system access enables hot detection of template changes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.prefix','','Prefix that gets prepended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.request-context-attribute','','Name of the RequestContext attribute for all views');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.settings.*','','Well-known FreeMarker keys which will be passed to FreeMarker''s Configuration');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.suffix','','Suffix that gets appended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.template-loader-path','classpath:/templates/','Comma-separated list of template paths');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.freemarker.view-names','','White list of view names that can be resolved');
-- GROOVY TEMPLATES (GroovyTemplateAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.allow-request-override','false','Set whether HttpServletRequest attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.allow-session-override','false','Set whether HttpSession attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.cache','','Enable template caching');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.charset','UTF-8','Template encoding');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.check-template-location','true','Check that the templates location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.configuration.*','','See GroovyMarkupConfigurer');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.content-type','test/html','Content-Type value');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.enabled','true','Enable MVC view resolution for this technology');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.expose-request-attributes','false','Set whether all request attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.expose-session-attributes','false','Set whether all HttpSession attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.expose-spring-macro-helpers','true','Set whether to expose a RequestContext for use by Spring''s macro library, under the name "springMacroRequestContext"');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.prefix','','Prefix that gets prepended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.request-context-attribute','','Name of the RequestContext attribute for all views');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.resource-loader-path','classpath:/templates/','Template path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.suffix','.tpl','Suffix that gets appended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.groovy.template.view-names','','White list of view names that can be resolved');
-- SPRING HATEOAS (HateoasProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.hateoas.use-hal-as-default-json-media-type','true','Specify if application/hal+json responses should be sent to requests that accept application/json');
-- HTTP message conversion
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.converters.preferred-json-mapper','jackson','Preferred JSON mapper to use for HTTP message conversion. Set to "gson" to force the use of Gson when both it and Jackson are on the classpath');
-- HTTP encoding (HttpEncodingProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.encoding.charset','UTF-8','Charset of HTTP requests and responses. Added to the "Content-Type" header if not set explicitly');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.encoding.enabled','true','Enable http encoding support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.encoding.force','','Force the encoding to the configured charset on HTTP requests and responses');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.encoding.force-request','','Force the encoding to the configured charset on HTTP requests. Defaults to true when "force" has not been specified');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.encoding.force-response','','Force the encoding to the configured charset on HTTP responses');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.encoding.mapping','','Locale to Encoding mapping');
-- MULTIPART (MultipartProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.multipart.enabled','true','Enable support of multi-part uploads');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.multipart.file-size-threshold','0','Threshold after which files will be written to disk. Values can use the suffixed "MB" or "KB" to indicate a Megabyte or Kilobyte size');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.multipart.location','','Intermediate location of uploaded files');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.multipart.max-file-size','1Mb','Max file size. Values can use the suffixed "MB" or "KB" to indicate a Megabyte or Kilobyte size');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.multipart.max-request-size','10Mb','Max request size. Values can use the suffixed "MB" or "KB" to indicate a Megabyte or Kilobyte size');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.http.multipart.resolve-lazily','false','Whether to resolve the multipart request lazily at the time of file or parameter access');
-- JACKSON (JacksonProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.date-format','','Date format string or a fully-qualified date format class name. For instance yyyy-MM-dd HH:mm:ss');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.default-property-inclusion','','Controls the inclusion of properties during serialization');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.deserialization.*','','Jackson on/off features that affect the way Java objects are deserialized');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.generator.*','','Jackson on/off features for generators');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.joda-date-time-format','','Joda date time format string. If not configured, "date-format" will be used as a fallback if it is configured with a format string');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.locale','','Locale used for formatting');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.mapper.*','','Jackson general purpose on/off features');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.parser.*','','Jackson on/off features for parsers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.property-naming-strategy','','One of the constants on Jackson''s PropertyNamingStrategy. Can also be a fully-qualified class name of a PropertyNamingStrategy subclass');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.serialization.*','','Jackson on/off features that affect the way Java objects are serialized');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.serialization-inclusion','','Controls the inclusion of properties during serialization. Configured with one of the values in Jackson''s JsonInclude.Include enumeration');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jackson.time-zone','','Time zone used when formatting dates. For instance America/Los_Angeles');
-- JERSEY (JerseyProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jersey.application-path','','Path that serves as the base URI for the application. Overrides the value of "@ApplicationPath" if specified');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jersey.filter.order','0','Jersey filter chain order');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jersey.init.*','','Init parameters to pass to Jersey via the servlet or filter');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jersey.servlet.load-on-startup','-1','Load on startup priority of the Jersey servlet');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.jersey.type','servlet','Jersey integration type');
-- SPRING MOBILE DEVICE VIEWS (DeviceDelegatingViewResolverAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.enable-fallback','false','Enable support for fallback resolution');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.enabled','false','Enable device view resolver');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.mobile-prefix','mobile/','Prefix that gets prepended to view names for mobile devices');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.mobile-suffix','','Suffix that gets appended to view names for mobile devices');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.normal-prefix','','Prefix that gets prepended to view names for normal devices');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.normal-suffix','','Suffix that gets appended to view names for normal devices');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.tablet-prefix','tablet/','Prefix that gets prepended to view names for tablet devices');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.devicedelegatingviewresolver.tablet-suffix','','Suffix that gets appended to view names for tablet devices');
-- SPRING MOBILE SITE PREFERENCE (SitePreferenceAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mobile.sitepreference.enabled','true','Enable SitePreferenceHandler');
-- MUSTACHE TEMPLATES (MustacheAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.allow-request-override','','Set whether HttpServletRequest attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.allow-session-override','','Set whether HttpSession attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.cache','','Enable template caching');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.charset','','Template encoding');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.check-template-location','','Check that the templates location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.content-type','','Content-Type value');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.enabled','','Enable MVC view resolution for this technology');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.expose-request-attributes','','Set whether all request attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.expose-session-attributes','','Set whether all HttpSession attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.expose-spring-macro-helpers','','Set whether to expose a RequestContext for use by Spring''s macro library, under the name "springMacroRequestContext"');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.prefix','classpath:/templates/','Prefix to apply to template names');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.request-context-attribute','','Name of the RequestContext attribute for all views');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.suffix','.html','Suffix to apply to template names');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mustache.view-names','','White list of view names that can be resolved');
-- SPRING MVC (WebMvcProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.async.request-timeout','','Amount of time (in milliseconds) before asynchronous request handling times out');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.date-format','','Date format to use. For instance dd/MM/yyyy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.dispatch-trace-request','false','Dispatch TRACE requests to the FrameworkServlet doService method');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.dispatch-options-request','true','Dispatch OPTIONS requests to the FrameworkServlet doService method');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.favicon.enabled','true','Enable resolution of favicon.ico');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.formcontent.putfilter.enabled','true','Enable Spring''s HttpPutFormContentFilter');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.ignore-default-model-on-redirect','true','If the content of the "default" model should be ignored during redirect scenarios');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.locale','','Locale to use. By default, this locale is overridden by the "Accept-Language" header');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.locale-resolver','accept-header','Define how the locale should be resolved');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.log-resolved-exception','false','Enable warn logging of exceptions resolved by a "HandlerExceptionResolver"');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.media-types.*','','Maps file extensions to media types for content negotiation');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.message-codes-resolver-format','','Formatting strategy for message codes. For instance PREFIX_ERROR_CODE');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.servlet.load-on-startup','-1','Load on startup priority of the Spring Web Services servlet');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.static-path-pattern','/**','Path pattern used for static resources');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.throw-exception-if-no-handler-found','false','If a "NoHandlerFoundException" should be thrown if no Handler was found to process a request');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.view.prefix','','Spring MVC view prefix');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.mvc.view.suffix','','Spring MVC view suffix');
-- SPRING RESOURCES HANDLING (ResourceProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.add-mappings','true','Enable default resource handling');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.cache-period','','Cache period for the resources served by the resource handler, in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.cache','true','Enable caching in the Resource chain');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.enabled','','Enable the Spring Resource Handling chain. Disabled by default unless at least one strategy has been enabled');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.gzipped','false','Enable resolution of already gzipped resources');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.html-application-cache','false','Enable HTML5 application cache manifest rewriting');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.strategy.content.enabled','false','Enable the content Version Strategy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.strategy.content.paths','/**','Comma-separated list of patterns to apply to the Version Strategy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.strategy.fixed.enabled','false','Enable the fixed Version Strategy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.strategy.fixed.paths','/**','Comma-separated list of patterns to apply to the Version Strategy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.chain.strategy.fixed.version','','Version string to use for the Version Strategy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.resources.static-locations','classpath:/META-INF/resources/,classpath:/resources/,classpath:/static/,classpath:/public/','Locations of static resources');
-- SPRING SESSION (SessionProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.hazelcast.map-name','spring:session:sessions','Name of the map used to store sessions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.jdbc.initializer.enabled','','Create the required session tables on startup if necessary. Enabled automatically if the default table name is set or a custom schema is configured');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.jdbc.schema','classpath:org/springframework/session/jdbc/schema-@@platform@@.sql','Path to the SQL file to use to initialize the database schema');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.jdbc.table-name','SPRING_SESSION','Name of database table used to store sessions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.mongo.collection-name','sessions','Collection name used to store sessions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.redis.flush-mode','','Flush mode for the Redis sessions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.redis.namespace','','Namespace for keys used to store sessions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.session.store-type','','Session store type');
-- SPRING SOCIAL (SocialWebAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.auto-connection-views','false','Enable the connection status view for supported providers');
-- SPRING SOCIAL FACEBOOK (FacebookAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.facebook.app-id','','your application''s Facebook App ID');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.facebook.app-secret','','your application''s Facebook App Secret');
-- SPRING SOCIAL LINKEDIN (LinkedInAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.linkedin.app-id','','your application''s LinkedIn App ID');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.linkedin.app-secret','','your application''s LinkedIn App Secret');
-- SPRING SOCIAL TWITTER (TwitterAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.twitter.app-id','','your application''s Twitter App ID');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.social.twitter.app-secret','','your application''s Twitter App Secret');
-- THYMELEAF (ThymeleafAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.cache','true','Enable template caching');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.check-template','true','Check that the template exists before rendering it');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.check-template-location','true','Check that the templates location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.content-type','text/html','Content-Type value');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.enabled','true','Enable MVC Thymeleaf view resolution');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.encoding','UTF-8','Template encoding');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.excluded-view-names','','Comma-separated list of view names that should be excluded from resolution');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.mode','HTML5','Template mode to be applied to templates. See also StandardTemplateModeHandlers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.prefix','classpath:/templates/','Prefix that gets prepended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.suffix','.html','Suffix that gets appended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.template-resolver-order','','Order of the template resolver in the chain');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.thymeleaf.view-names','','Comma-separated list of view names that can be resolved');
-- VELOCITY TEMPLATES (VelocityAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.allow-request-override','false','Set whether HttpServletRequest attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.allow-session-override','false','Set whether HttpSession attributes are allowed to override (hide) controller generated model attributes of the same name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.cache','','Enable template caching');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.charset','UTF-8','Template encoding');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.check-template-location','true','Check that the templates location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.content-type','text/html','Content-Type value');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.date-tool-attribute','','Name of the DateTool helper object to expose in the Velocity context of the view');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.enabled','true','Enable MVC view resolution for this technology');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.expose-request-attributes','false','Set whether all request attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.expose-session-attributes','false','Set whether all HttpSession attributes should be added to the model prior to merging with the template');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.expose-spring-macro-helpers','true','Set whether to expose a RequestContext for use by Spring''s macro library, under the name "springMacroRequestContext"');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.number-tool-attribute','','Name of the NumberTool helper object to expose in the Velocity context of the view');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.prefer-file-system-access','true','Prefer file system access for template loading. File system access enables hot detection of template changes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.prefix','','Prefix that gets prepended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.properties.*','','Additional velocity properties');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.request-context-attribute','','Name of the RequestContext attribute for all views');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.resource-loader-path','classpath:/templates/','Template path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.suffix','.vm','Suffix that gets appended to view names when building a URL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.toolbox-config-location','','Velocity Toolbox config location. For instance /WEB-INF/toolbox.xml');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.velocity.view-names','','White list of view names that can be resolved');
-- SPRING WEB SERVICES (WebServicesProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.webservices.path','/services','Path that serves as the base URI for the services');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.webservices.servlet.init','','Servlet init parameters to pass to Spring Web Services');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('WEB PROPERTIES','EMBEDDED SERVER CONFIGURATION','spring.webservices.servlet.load-on-startup','-1','Load on startup priority of the Spring Web Services servlet');
-- ----------------------------------------
-- SECURITY PROPERTIES
-- ----------------------------------------
-- SECURITY (SecurityProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.basic.authorize-mode','role','Security authorize mode to apply');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.basic.enabled','true','Enable basic authentication');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.basic.path','/**','Comma-separated list of paths to secure');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.basic.realm','Spring','HTTP basic realm name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.enable-csrf','false','Enable Cross Site Request Forgery support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.filter-order','0','Security filter chain order');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.filter-dispatcher-types','ASYNC, FORWARD, INCLUDE, REQUEST','Security filter chain dispatcher types');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.headers.cache','true','Enable cache control HTTP headers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.headers.content-type','true','Enable "X-Content-Type-Options" header');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.headers.frame','true','Enable "X-Frame-Options" header');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.headers.hsts','','HTTP Strict Transport Security (HSTS) mode (none, domain, all)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.headers.xss','true','Enable cross site scripting (XSS) protection');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.ignored','','Comma-separated list of paths to exclude from the default secured paths');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.require-ssl','false','Enable secure channel for all requests');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.sessions','stateless','Session creation policy (always, never, if_required, stateless)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.user.name','user','Default user name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.user.password','','Password for the default user name. A random password is logged on startup by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.user.role','USER','Granted roles for the default user name');
-- SECURITY OAUTH2 CLIENT (OAuth2ClientProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.client.client-id','','OAuth2 client id');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.client.client-secret','','OAuth2 client secret. A random secret is generated by default');
-- SECURITY OAUTH2 RESOURCES (ResourceServerProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.id','','Identifier of the resource');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.jwt.key-uri','','The URI of the JWT token. Can be set if the value is not available and the key is public');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.jwt.key-value','','The verification key of the JWT token. Can either be a symmetric secret or PEM-encoded RSA public key');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.prefer-token-info','true','Use the token info, can be set to false to use the user info');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.service-id','resource','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.token-info-uri','','URI of the token decoding endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.token-type','','The token type to send when using the userInfoUri');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.resource.user-info-uri','','URI of the user endpoint');
-- SECURITY OAUTH2 SSO (OAuth2SsoProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.sso.filter-order','','Filter order to apply if not providing an explicit WebSecurityConfigurerAdapter');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('SECURITY PROPERTIES','SECURITY','security.oauth2.sso.login-path','/login','Path to the login page, i.e. the one that triggers the redirect to the OAuth2 Authorization Server');
-- ----------------------------------------
-- DATA PROPERTIES
-- ----------------------------------------
-- FLYWAY (FlywayProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.baseline-description','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.baseline-version','1','version to start migration');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.baseline-on-migrate','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.check-location','false','Check that migration scripts location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.clean-on-validation-error','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.enabled','true','Enable flyway');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.encoding','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.ignore-failed-future-migration','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.init-sqls','','SQL statements to execute to initialize a connection immediately after obtaining it');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.locations','classpath:db/migration','locations of migrations scripts');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.out-of-order','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.password','','JDBC password if you want Flyway to create its own DataSource');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.placeholder-prefix','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.placeholder-replacement','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.placeholder-suffix','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.placeholders.*','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.schemas','','schemas to update');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.sql-migration-prefix','V','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.sql-migration-separator','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.sql-migration-suffix','.sql','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.table','','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.url','','JDBC url of the database to migrate. If not set, the primary configured data source is used');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.user','','Login user of the database to migrate');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','FLYWAY','flyway.validate-on-migrate','','');
-- LIQUIBASE (LiquibaseProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.change-log','classpath:/db/changelog/db.changelog-master.yaml','Change log configuration path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.check-change-log-location','true','Check the change log location exists');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.contexts','','Comma-separated list of runtime contexts to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.default-schema','','Default database schema');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.drop-first','false','Drop the database schema first');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.enabled','true','Enable liquibase support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.labels','','Comma-separated list of runtime labels to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.parameters.*','','Change log parameters');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.password','','Login password of the database to migrate');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.rollback-file','','File to which rollback SQL will be written when an update is performed');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.url','','JDBC url of the database to migrate. If not set, the primary configured data source is used');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','LIQUIBASE','liquibase.user','','Login user of the database to migrate.');
-- COUCHBASE (CouchbaseProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.bootstrap-hosts','','Couchbase nodes (host or IP address) to bootstrap from');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.bucket.name','default','Name of the bucket to connect to');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.bucket.password',' ','Password of the bucket');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.endpoints.key-value','1','Number of sockets per node against the Key/value service');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.endpoints.query','1','Number of sockets per node against the Query (N1QL) service');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.endpoints.view','1','Number of sockets per node against the view service');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.ssl.enabled','','Enable SSL support. Enabled automatically if a "keyStore" is provided unless specified otherwise');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.ssl.key-store','','Path to the JVM key store that holds the certificates');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.ssl.key-store-password','','Password used to access the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.timeouts.connect','5000','Bucket connections timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.timeouts.key-value','2500','Blocking operations performed on a specific key timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.timeouts.query','7500','N1QL query operations timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.timeouts.socket-connect','1000','Socket connect connections timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','COUCHBASE','spring.couchbase.env.timeouts.view','7500','Regular and geospatial view operations timeout in milliseconds');
-- DAO (PersistenceExceptionTranslationAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DAO','spring.dao.exceptiontranslation.enabled','true','Enable the PersistenceExceptionTranslationPostProcessor');
-- CASSANDRA (CassandraProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.cluster-name','','Name of the Cassandra cluster');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.compression','','Compression supported by the Cassandra binary protocol');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.connect-timeout-millis','','Socket option: connection time out');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.consistency-level','','Queries consistency level');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.contact-points','localhost','Comma-separated list of cluster node addresses');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.fetch-size','','Queries default fetch size');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.keyspace-name','','Keyspace name to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.load-balancing-policy','','Class name of the load balancing policy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.port','','Port of the Cassandra server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.password','','Login password of the server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.read-timeout-millis','','Socket option: read time out');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.reconnection-policy','','Reconnection policy class');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.retry-policy','','Class name of the retry policy');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.serial-consistency-level','','Queries serial consistency level');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.schema-action','none','Schema action to take at startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.ssl','false','Enable SSL support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','CASSANDRA','spring.data.cassandra.username','','Login user of the server');
-- DATA COUCHBASE (CouchbaseDataProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA COUCHBASE','spring.data.couchbase.auto-index','false','Automatically create views and indexes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA COUCHBASE','spring.data.couchbase.consistency','read-your-own-writes','Consistency to apply by default on generated queries');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA COUCHBASE','spring.data.couchbase.repositories.enabled','true','Enable Couchbase repositories');
-- ELASTICSEARCH (ElasticsearchProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ELASTICSEARCH','spring.data.elasticsearch.cluster-name','elasticsearch','Elasticsearch cluster name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ELASTICSEARCH','spring.data.elasticsearch.cluster-nodes','','Comma-separated list of cluster node addresses. If not specified, starts a client node');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ELASTICSEARCH','spring.data.elasticsearch.properties.*','','Additional properties used to configure the client');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ELASTICSEARCH','spring.data.elasticsearch.repositories.enabled','true','Enable Elasticsearch repositories');
-- MONGODB (MongoProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.authentication-database','','Authentication database name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.database','test','Database name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.field-naming-strategy','','Fully qualified name of the FieldNamingStrategy to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.grid-fs-database','','GridFS database name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.host','localhost','Mongo server host');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.password','','Login password of the mongo server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.port','27017','Mongo server port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.repositories.enabled','true','Enable Mongo repositories');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.uri','mongodb://localhost/test','Mongo database URI. When set, host and port are ignored');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','MONGODB','spring.data.mongodb.username','','Login user of the mongo server');
-- DATA REDIS
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REDIS','spring.data.redis.repositories.enabled','true','Enable Redis repositories');
-- NEO4J (Neo4jProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.compiler','','Compiler to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.embedded.enabled','true','Enable embedded mode if the embedded driver is available');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.password','','Login password of the server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.repositories.enabled','true','Enable Neo4j repositories');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.session.scope','singleton','Scope (lifetime) of the session');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.uri','','URI used by the driver. Auto-detected by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NEO4J','spring.data.neo4j.username','','Login user of the server');
-- DATA REST (RepositoryRestProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.base-path','','Base path to be used by Spring Data REST to expose repository resources');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.default-page-size','','Default size of pages');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.enable-enum-translation','','Enable enum value translation via the Spring Data REST default resource bundle');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.limit-param-name','','Name of the URL query string parameter that indicates how many results to return at once');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.max-page-size','','Maximum size of pages');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.page-param-name','','Name of the URL query string parameter that indicates what page to return');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.return-body-on-create','','Return a response body after creating an entity');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.return-body-on-update','','Return a response body after updating an entity');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATA REST','spring.data.rest.sort-param-name','','Name of the URL query string parameter that indicates what direction to sort results');
-- SOLR (SolrProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','SOLR','spring.data.solr.host','http://127.0.0.1:8983/solr','Solr host. Ignored if "zk-host" is set');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','SOLR','spring.data.solr.repositories.enabled','true','Enable Solr repositories');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','SOLR','spring.data.solr.zk-host','','ZooKeeper host address in the form HOST:PORT');
-- DATASOURCE (DataSourceAutoConfiguration & DataSourceProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.continue-on-error','false','Do not stop if an error occurs while initializing the database');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.data','','Data (DML) script resource reference');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.data-username','','User of the database to execute DML scripts (if different)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.data-password','','Password of the database to execute DML scripts (if different)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.dbcp.*','','Commons DBCP specific settings');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.dbcp2.*','','Commons DBCP2 specific settings');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.driver-class-name','','Fully qualified name of the JDBC driver. Auto-detected based on the URL by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.generate-unique-name','false','Generate a random datasource name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.hikari.*','','Hikari specific settings');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.initialize','true','Populate the database using data.sql');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.jmx-enabled','false','Enable JMX support (if provided by the underlying pool)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.jndi-name','','JNDI location of the datasource. Class, url, username & password are ignored when set');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.name','testdb','Name of the datasource');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.password','','Login password of the database');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.platform','all','Platform to use in the schema resource (schema-${platform}.sql)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.schema','','Schema (DDL) script resource reference');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.schema-username','','User of the database to execute DDL scripts (if different)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.schema-password','','Password of the database to execute DDL scripts (if different)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.separator',';','Statement separator in SQL initialization scripts');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.sql-script-encoding','','SQL scripts encoding');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.tomcat.*','','Tomcat datasource specific settings');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.type','','Fully qualified name of the connection pool implementation to use. By default, it is auto-detected from the classpath');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.url','','JDBC url of the database');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','DATASOURCE','spring.datasource.username','','');
-- JEST (Elasticsearch HTTP client) (JestProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.connection-timeout','3000','Connection timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.password','','Login password');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.proxy.host','','Proxy host the HTTP client should use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.proxy.port','','Proxy port the HTTP client should use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.read-timeout','3000','Read timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.uris','http://localhost:9200','Comma-separated list of the Elasticsearch instances to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JEST','spring.elasticsearch.jest.username','','Login user');
-- H2 Web Console (H2ConsoleProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','H2 Web Console','spring.h2.console.enabled','false','Enable the console');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','H2 Web Console','spring.h2.console.path','/h2-console','Path at which the console will be available');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','H2 Web Console','spring.h2.console.settings.trace','false','Enable trace output');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','H2 Web Console','spring.h2.console.settings.web-allow-others','false','Enable remote access');
-- JOOQ (JooqAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JOOQ','spring.jooq.sql-dialect','','SQLDialect JOOQ used when communicating with the configured datasource. For instance POSTGRES');
-- JPA (JpaBaseConfiguration, HibernateJpaAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.data.jpa.repositories.enabled','true','Enable JPA repositories.');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.database','','Target database to operate on, auto-detected by default. Can be alternatively set using the "databasePlatform" property');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.database-platform','','Name of the target database to operate on, auto-detected by default. Can be alternatively set using the "Database" enum');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.generate-ddl','false','Initialize the schema on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.hibernate.ddl-auto','','DDL mode. This is actually a shortcut for the "hibernate.hbm2ddl.auto" property. Default to "create-drop" when using an embedded database, "none" otherwise');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.hibernate.naming.implicit-strategy','','Hibernate 5 implicit naming strategy fully qualified name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.hibernate.naming.physical-strategy','','Hibernate 5 physical naming strategy fully qualified name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.hibernate.naming.strategy','','Hibernate 4 naming strategy fully qualified name. Not supported with Hibernate 5');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.hibernate.use-new-id-generator-mappings','','Use Hibernate''s newer IdentifierGenerator for AUTO, TABLE and SEQUENCE');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.open-in-view','true','Register OpenEntityManagerInViewInterceptor. Binds a JPA EntityManager to the thread for the entire processing of the request');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.properties.*','','Additional native properties to set on the JPA provider');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JPA','spring.jpa.show-sql','false','Enable logging of SQL statements');
-- JTA (JtaAutoConfiguration)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JTA','spring.jta.enabled','true','Enable JTA support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JTA','spring.jta.log-dir','','Transaction logs directory');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','JTA','spring.jta.transaction-manager-id','','Transaction manager unique identifier');
-- ATOMIKOS (AtomikosProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.borrow-connection-timeout','30','Timeout, in seconds, for borrowing connections from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.ignore-session-transacted-flag','true','Whether or not to ignore the transacted flag when creating session');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.local-transaction-mode','false','Whether or not local transactions are desired');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.maintenance-interval','60','The time, in seconds, between runs of the pool''s maintenance thread');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.max-idle-time','60','The time, in seconds, after which connections are cleaned up from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.max-lifetime','0','The time, in seconds, that a connection can be pooled for before being destroyed. 0 denotes no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.max-pool-size','1','The maximum size of the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.min-pool-size','1','The minimum size of the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.reap-timeout','0','The reap timeout, in seconds, for borrowed connections. 0 denotes no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.connectionfactory.unique-resource-name','jmsConnectionFactory','The unique name used to identify the resource during recovery');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.borrow-connection-timeout','30','Timeout, in seconds, for borrowing connections from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.default-isolation-level','','Default isolation level of connections provided by the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.login-timeout','','Timeout, in seconds, for establishing a database connection');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.maintenance-interval','60','The time, in seconds, between runs of the pool''s maintenance thread');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.max-idle-time','60','The time, in seconds, after which connections are cleaned up from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.max-lifetime','0','The time, in seconds, that a connection can be pooled for before being destroyed. 0 denotes no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.max-pool-size','1','The maximum size of the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.min-pool-size','1','The minimum size of the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.reap-timeout','0','The reap timeout, in seconds, for borrowed connections. 0 denotes no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.test-query','','SQL query or statement used to validate a connection before returning it');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.datasource.unique-resource-name','dataSource','The unique name used to identify the resource during recovery');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.checkpoint-interval','500','Interval between checkpoints');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.console-file-count','1','Number of debug logs files that can be created');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.console-file-limit','-1','How many bytes can be stored at most in debug logs files');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.console-file-name','tm.out','Debug logs file name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.console-log-level','','Console log level');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.default-jta-timeout','10000','Default timeout for JTA transactions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.enable-logging','true','Enable disk logging');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.force-shutdown-on-vm-exit','false','Specify if a VM shutdown should trigger forced shutdown of the transaction core');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.log-base-dir','','Directory in which the log files should be stored');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.log-base-name','tmlog','Transactions log file base name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.max-actives','50','Maximum number of active transactions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.max-timeout','300000','Maximum timeout (in milliseconds) that can be allowed for transactions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.output-dir','','Directory in which to store the debug log files');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.serial-jta-transactions','true','Specify if sub-transactions should be joined when possible');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.service','','Transaction manager implementation that should be started');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.threaded-two-phase-commit','true','Use different (and concurrent) threads for two-phase commit on the participating resources');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','ATOMIKOS','spring.jta.atomikos.properties.transaction-manager-unique-name','','Transaction manager''s unique name');
-- BITRONIX
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.acquire-increment','1','Number of connections to create when growing the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.acquisition-interval','1','Time, in seconds, to wait before trying to acquire a connection again after an invalid connection was acquired');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.acquisition-timeout','30','Timeout, in seconds, for acquiring connections from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.allow-local-transactions','true','Whether or not the transaction manager should allow mixing XA and non-XA transactions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.apply-transaction-timeout','false','Whether or not the transaction timeout should be set on the XAResource when it is enlisted');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.automatic-enlisting-enabled','true','Whether or not resources should be enlisted and delisted automatically');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.cache-producers-consumers','true','Whether or not produces and consumers should be cached');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.defer-connection-release','true','Whether or not the provider can run many transactions on the same connection and supports transaction interleaving');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.ignore-recovery-failures','false','Whether or not recovery failures should be ignored');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.max-idle-time','60','The time, in seconds, after which connections are cleaned up from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.max-pool-size','10','The maximum size of the pool. 0 denotes no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.min-pool-size','0','The minimum size of the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.password','','The password to use to connect to the JMS provider');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.share-transaction-connections','false',' Whether or not connections in the ACCESSIBLE state can be shared within the context of a transaction');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.test-connections','true','Whether or not connections should be tested when acquired from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.two-pc-ordering-position','1','The position that this resource should take during two-phase commit (always first is Integer.MIN_VALUE, always last is Integer.MAX_VALUE)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.unique-name','jmsConnectionFactory','The unique name used to identify the resource during recovery');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.use-tm-join','true','Whether or not TMJOIN should be used when starting XAResources');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.connectionfactory.user','','The user to use to connect to the JMS provider');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.acquire-increment','1','Number of connections to create when growing the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.acquisition-interval','1','Time, in seconds, to wait before trying to acquire a connection again after an invalid connection was acquired');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.acquisition-timeout','30','Timeout, in seconds, for acquiring connections from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.allow-local-transactions','true','Whether or not the transaction manager should allow mixing XA and non-XA transactions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.apply-transaction-timeout','false','Whether or not the transaction timeout should be set on the XAResource when it is enlisted');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.automatic-enlisting-enabled','true','Whether or not resources should be enlisted and delisted automatically');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.cursor-holdability','','The default cursor holdability for connections');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.defer-connection-release','true','Whether or not the database can run many transactions on the same connection and supports transaction interleaving');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.enable-jdbc4-connection-test','','Whether or not Connection.isValid() is called when acquiring a connection from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.ignore-recovery-failures','false','Whether or not recovery failures should be ignored');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.isolation-level','','The default isolation level for connections');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.local-auto-commit','','The default auto-commit mode for local transactions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.login-timeout','','Timeout, in seconds, for establishing a database connection');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.max-idle-time','60','The time, in seconds, after which connections are cleaned up from the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.max-pool-size','10','The maximum size of the pool. 0 denotes no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.min-pool-size','0','The minimum size of the pool');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.prepared-statement-cache-size','0','The target size of the prepared statement cache. 0 disables the cache');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.share-transaction-connections','false',' Whether or not connections in the ACCESSIBLE state can be shared within the context of a transaction');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.test-query','','SQL query or statement used to validate a connection before returning it');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.two-pc-ordering-position','1','The position that this resource should take during two-phase commit (always first is Integer.MIN_VALUE, always last is Integer.MAX_VALUE)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.unique-name','dataSource','The unique name used to identify the resource during recovery');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.datasource.use-tm-join','true','Whether or not TMJOIN should be used when starting XAResources');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.allow-multiple-lrc','false','Allow multiple LRC resources to be enlisted into the same transaction');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.asynchronous2-pc','false','Enable asynchronously execution of two phase commit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.background-recovery-interval-seconds','60','Interval in seconds at which to run the recovery process in the background');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.current-node-only-recovery','true','Recover only the current node');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.debug-zero-resource-transaction','false','Log the creation and commit call stacks of transactions executed without a single enlisted resource');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.default-transaction-timeout','60','Default transaction timeout in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.disable-jmx','false','Enable JMX support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.exception-analyzer','','Set the fully qualified name of the exception analyzer implementation to use');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.filter-log-status','false','Enable filtering of logs so that only mandatory logs are written');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.force-batching-enabled','true',' Set if disk forces are batched');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.forced-write-enabled','true','Set if logs are forced to disk');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.graceful-shutdown-interval','60','Maximum amount of seconds the TM will wait for transactions to get done before aborting them at shutdown time');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.jndi-transaction-synchronization-registry-name','','JNDI name of the TransactionSynchronizationRegistry');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.jndi-user-transaction-name','','JNDI name of the UserTransaction');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.journal','disk','Name of the journal. Can be disk, null or a class name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.log-part1-filename','btm1.tlog','Name of the first fragment of the journal');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.log-part2-filename','btm2.tlog','Name of the second fragment of the journal');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.max-log-size-in-mb','2','Maximum size in megabytes of the journal fragments');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.resource-configuration-filename','','ResourceLoader configuration file name');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.server-id','','ASCII ID that must uniquely identify this TM instance. Default to the machine''s IP address');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.skip-corrupted-logs','false','Skip corrupted transactions log entries');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','BITRONIX','spring.jta.bitronix.properties.warn-about-zero-resource-transaction','true','Log a warning for transactions executed without a single enlisted resource');
-- NARAYANA (NarayanaProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.default-timeout','60','Transaction timeout in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.expiry-scanners','com.arjuna.ats.internal.arjuna.recovery.ExpiredTransactionStatusManagerScanner','Comma-separated list of expiry scanners');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.log-dir','','Transaction object store directory');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.one-phase-commit','true','Enable one phase commit optimisation');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.periodic-recovery-period','120','Interval in which periodic recovery scans are performed in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.recovery-backoff-period','10','Back off period between first and second phases of the recovery scan in seconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.recovery-db-pass','','Database password to be used by recovery manager');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.recovery-db-user','','Database username to be used by recovery manager');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.recovery-jms-pass','','JMS password to be used by recovery manager');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.recovery-jms-user','','JMS username to be used by recovery manager');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.recovery-modules','','Comma-separated list of recovery modules');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.transaction-manager-id','1','Unique transaction manager id');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','NARAYANA','spring.jta.narayana.xa-resource-orphan-filters','','Comma-separated list of orphan filters');
-- EMBEDDED MONGODB (EmbeddedMongoProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','EMBEDDED MONGODB','spring.mongodb.embedded.features','SYNC_DELAY','Comma-separated list of features to enable');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','EMBEDDED MONGODB','spring.mongodb.embedded.storage.databaseDir','','Directory used for data storage');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','EMBEDDED MONGODB','spring.mongodb.embedded.storage.oplogSize','','Maximum size of the oplog in megabytes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','EMBEDDED MONGODB','spring.mongodb.embedded.storage.replSetName','','Name of the replica set');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','EMBEDDED MONGODB','spring.mongodb.embedded.version','2.6.10','Version of Mongo to use');
-- REDIS (RedisProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.cluster.max-redirects','','Maximum number of redirects to follow when executing commands across the cluster');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.cluster.nodes','','Comma-separated list of "host:port" pairs to bootstrap from');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.database','0','Database index used by the connection factory');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.host','localhost','Redis server host');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.password','','Login password of the redis server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.pool.max-active','8','Max number of connections that can be allocated by the pool at a given time. Use a negative value for no limit');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.pool.max-idle','8','Max number of "idle" connections in the pool. Use a negative value to indicate an unlimited number of idle connections');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.pool.max-wait','-1','Maximum amount of time (in milliseconds) a connection allocation should block before throwing an exception when the pool is exhausted. Use a negative value to block indefinitely');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.pool.min-idle','0','Target for the minimum number of idle connections to maintain in the pool. This setting only has an effect if it is positive');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.port','6379','Redis server port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.sentinel.master','','Name of Redis server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.sentinel.nodes','','Comma-separated list of host:port pairs');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DATA PROPERTIES','REDIS','spring.redis.timeout','0','Connection timeout in milliseconds');
-- ----------------------------------------
-- INTEGRATION PROPERTIES
-- ----------------------------------------
-- ACTIVEMQ (ActiveMQProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.broker-url','','URL of the ActiveMQ broker. Auto-generated by default. For instance tcp://localhost:61616');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.in-memory','true','Specify if the default broker URL should be in memory. Ignored if an explicit broker has been specified');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.password','','Login password of the broker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.user','','Login user of the broker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.packages.trust-all','false','Trust all packages');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.packages.trusted','','Comma-separated list of specific packages to trust (when not trusting all packages)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.pool.configuration.*','','See PooledConnectionFactory');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.pool.enabled','false','Whether a PooledConnectionFactory should be created instead of a regular ConnectionFactory');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.pool.expiry-timeout','0','Connection expiration timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.pool.idle-timeout','30000','Connection idle timeout in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ACTIVEMQ','spring.activemq.pool.max-connections','1','Maximum number of pooled connections');
-- ARTEMIS (ArtemisProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.cluster-password','','Cluster password. Randomly generated on startup by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.data-directory','','Journal file directory. Not necessary if persistence is turned off');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.enabled','true','Enable embedded mode if the Artemis server APIs are available');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.persistent','false','Enable persistent store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.queues','','Comma-separated list of queues to create on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.server-id','','Server id. By default, an auto-incremented counter is used');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.embedded.topics','','Comma-separated list of topics to create on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.host','localhost','Artemis broker host');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.mode','','Artemis deployment mode, auto-detected by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.password','','Login password of the broker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.port','61616','Artemis broker port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','ARTEMIS','spring.artemis.user','','Login user of the broker');
-- SPRING BATCH (BatchProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','SPRING BATCH','spring.batch.initializer.enabled','','Create the required batch tables on startup if necessary. Enabled automatically if no custom table prefix is set or if a custom schema is configured');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','SPRING BATCH','spring.batch.job.enabled','true','Execute all Spring Batch jobs in the context on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','SPRING BATCH','spring.batch.job.names','','Comma-separated list of job names to execute on startup (For instance job1,job2). By default, all Jobs found in the context are executed');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','SPRING BATCH','spring.batch.schema','classpath:org/springframework/batch/core/schema-@@platform@@.sql','Path to the SQL file to use to initialize the database schema');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','SPRING BATCH','spring.batch.table-prefix','','Table prefix for all the batch meta-data tables');
-- HORNETQ (HornetQProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.cluster-password','','Cluster password. Randomly generated on startup by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.data-directory','','Journal file directory. Not necessary if persistence is turned off');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.enabled','true','Enable embedded mode if the HornetQ server APIs are available');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.persistent','false','Enable persistent store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.queues','','Comma-separated list of queues to create on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.server-id','','Server id. By default, an auto-incremented counter is used');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.embedded.topics','','Comma-separated list of topics to create on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.host','localhost','HornetQ broker host');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.mode','','HornetQ deployment mode, auto-detected by default');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.password','','Login password of the broker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.port','5445','HornetQ broker port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','HORNETQ','spring.hornetq.user','','Login user of the broker');
-- JMS (JmsProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','JMS','spring.jms.jndi-name','','Connection factory JNDI name. When set, takes precedence to others connection factory auto-configurations');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','JMS','spring.jms.listener.acknowledge-mode','','Acknowledge mode of the container. By default, the listener is transacted with automatic acknowledgment');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','JMS','spring.jms.listener.auto-startup','true','Start the container automatically on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','JMS','spring.jms.listener.concurrency','','Minimum number of concurrent consumers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','JMS','spring.jms.listener.max-concurrency','','Maximum number of concurrent consumers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','JMS','spring.jms.pub-sub-domain','false','Specify if the default destination type is topic');
-- RABBIT (RabbitProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.addresses','','Comma-separated list of addresses to which the client should connect');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.cache.channel.checkout-timeout','','Number of milliseconds to wait to obtain a channel if the cache size has been reached');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.cache.channel.size','','Number of channels to retain in the cache');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.cache.connection.mode','CHANNEL','Connection factory cache mode');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.cache.connection.size','','Number of connections to cache');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.connection-timeout','','Connection timeout, in milliseconds; zero for infinite');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.dynamic','true','Create an AmqpAdmin bean');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.host','localhost','RabbitMQ host');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.acknowledge-mode','','Acknowledge mode of container');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.auto-startup','true','Start the container automatically on startup');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.concurrency','','Minimum number of consumers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.default-requeue-rejected','','Whether or not to requeue delivery failures; default true');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.max-concurrency','','Maximum number of consumers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.prefetch','','Number of messages to be handled in a single request. It should be greater than or equal to the transaction size (if used)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.retry.enabled','false','Whether or not publishing retries are enabled');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.retry.initial-interval','1000','Interval between the first and second attempt to deliver a message');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.retry.max-attempts','3','Maximum number of attempts to deliver a message');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.retry.max-interval','10000','Maximum interval between attempts');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.retry.multiplier','1.0','A multiplier to apply to the previous delivery retry interval');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.retry.stateless','true','Whether or not retry is stateless or stateful');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.listener.transaction-size','','Number of messages to be processed in a transaction. For best results it should be less than or equal to the prefetch count');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.password','','Login to authenticate against the broker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.port','5672','RabbitMQ port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.publisher-confirms','false','Enable publisher confirms');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.publisher-returns','false','Enable publisher returns');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.requested-heartbeat','','Requested heartbeat timeout, in seconds; zero for none');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.ssl.enabled','false','Enable SSL support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.ssl.key-store','','Path to the key store that holds the SSL certificate');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.ssl.key-store-password','','Password used to access the key store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.ssl.trust-store','','Trust store that holds SSL certificates');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.ssl.trust-store-password','','Password used to access the trust store');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.ssl.algorithm','','SSL algorithm to use. By default configure by the rabbit client library');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.mandatory','false','Enable mandatory messages');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.receive-timeout','0','Timeout for receive() methods');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.reply-timeout','5000','Timeout for sendAndReceive() methods');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.retry.enabled','false','Set to true to enable retries in the RabbitTemplate');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.retry.initial-interval','1000','Interval between the first and second attempt to publish a message');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.retry.max-attempts','3','Maximum number of attempts to publish a message');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.retry.max-interval','10000','Maximum number of attempts to publish a message');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.template.retry.multiplier','1.0','A multiplier to apply to the previous publishing retry interval');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.username','','Login user to authenticate to the broker');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('INTEGRATION PROPERTIES','RABBIT','spring.rabbitmq.virtual-host','','Virtual host to use when connecting to the broker');
-- ----------------------------------------
-- ACTUATOR PROPERTIES
-- ----------------------------------------
-- ENDPOINTS (AbstractEndpoint subclasses)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.enabled','true','Enable endpoints');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.sensitive','','Default endpoint sensitive setting');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.actuator.enabled','true','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.actuator.path','','Endpoint URL path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.actuator.sensitive','false','Enable security on the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.autoconfig.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.autoconfig.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.autoconfig.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.autoconfig.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.beans.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.beans.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.beans.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.beans.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.configprops.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.configprops.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.configprops.keys-to-sanitize','password,secret,key,token,.*credentials.*,vcap_services','Keys that should be sanitized. Keys can be simple strings that the property ends with or regex expressions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.configprops.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.configprops.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.docs.curies.enabled','false','Enable the curie generation');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.docs.enabled','true','Enable actuator docs endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.docs.path','/docs','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.docs.sensitive','false','');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.dump.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.dump.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.dump.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.dump.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.env.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.env.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.env.keys-to-sanitize','password,secret,key,token,.*credentials.*,vcap_services','Keys that should be sanitized. Keys can be simple strings that the property ends with or regex expressions');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.env.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.env.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.flyway.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.flyway.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.flyway.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.health.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.health.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.health.mapping.*','','Mapping of health statuses to HttpStatus codes. By default, registered health statuses map to sensible defaults (i.e. UP maps to 200)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.health.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.health.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.health.time-to-live','1000','Time to live for cached result, in milliseconds');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.heapdump.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.heapdump.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.heapdump.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.hypermedia.enabled','false','Enable hypermedia support for endpoints');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.info.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.info.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.info.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.info.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.jolokia.enabled','true','Enable Jolokia endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.jolokia.path','/jolokia','Endpoint URL path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.jolokia.sensitive','true','Enable security on the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.liquibase.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.liquibase.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.liquibase.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.logfile.enabled','true','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.logfile.external-file','','External Logfile to be accessed');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.logfile.path','/logfile','Endpoint URL path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.logfile.sensitive','true','Enable security on the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.mappings.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.mappings.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.mappings.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.mappings.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.filter.enabled','true','Enable the metrics servlet filter');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.filter.gauge-submissions','merged','Http filter gauge submissions (merged, per-http-method)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.filter.counter-submissions','merged','Http filter counter submissions (merged, per-http-method)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.metrics.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.shutdown.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.shutdown.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.shutdown.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.shutdown.sensitive','','Mark if the endpoint exposes sensitive information');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.trace.enabled','','Enable the endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.trace.id','','Endpoint identifier');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.trace.path','','Endpoint path');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS','endpoints.trace.sensitive','','Mark if the endpoint exposes sensitive information');
-- ENDPOINTS CORS CONFIGURATION (EndpointCorsProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS CORS CONFIGURATION','endpoints.cors.allow-credentials','','Set whether credentials are supported. When not set, credentials are not supported');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS CORS CONFIGURATION','endpoints.cors.allowed-headers','','Comma-separated list of headers to allow in a request. * allows all headers');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS CORS CONFIGURATION','endpoints.cors.allowed-methods','GET','Comma-separated list of methods to allow. * allows all methods');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS CORS CONFIGURATION','endpoints.cors.allowed-origins','','Comma-separated list of origins to allow. * allows all origins. When not set, CORS support is disabled');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS CORS CONFIGURATION','endpoints.cors.exposed-headers','','Comma-separated list of headers to include in a response');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','ENDPOINTS CORS CONFIGURATION','endpoints.cors.max-age','1800','How long, in seconds, the response from a pre-flight request can be cached by clients');
-- JMX ENDPOINT (EndpointMBeanExportProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','JMX ENDPOINT','endpoints.jmx.domain','','JMX domain name. Initialized with the value of spring.jmx.default-domain if set');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','JMX ENDPOINT','endpoints.jmx.enabled','true','Enable JMX export of all endpoints');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','JMX ENDPOINT','endpoints.jmx.static-names','','Additional static properties to append to all ObjectNames of MBeans representing Endpoints');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','JMX ENDPOINT','endpoints.jmx.unique-names','false','Ensure that ObjectNames are modified in case of conflict');
-- JOLOKIA (JolokiaProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','JOLOKIA','jolokia.config.*','','See Jolokia manual');
-- MANAGEMENT HTTP SERVER (ManagementServerProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.add-application-context-header','true','Add the "X-Application-Context" HTTP header in each response');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.address','','Network address that the management endpoints should bind to');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.context-path','','Management endpoint context-path. For instance /actuator');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.port','','Management endpoint HTTP port. Uses the same port as the application by default. Configure a different port to use management-specific SSL');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.security.enabled','true','Enable security');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.security.roles','ADMIN','Comma-separated list of roles that can access the management endpoint');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.security.sessions','stateless','Session creating policy to use (always, never, if_required, stateless)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.ciphers','','Supported SSL ciphers. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.client-auth','','Whether client authentication is wanted ("want") or needed ("need"). Requires a trust store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.enabled','','Enable SSL support. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.enabled-protocols','','Enabled SSL protocols. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.key-alias','','Alias that identifies the key in the key store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.key-password','','Password used to access the key in the key store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.key-store','','Path to the key store that holds the SSL certificate (typically a jks file). Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.key-store-password','','Password used to access the key store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.key-store-provider','','Provider for the key store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.key-store-type','','Type of the key store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.protocol','TLS','SSL protocol to use. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.trust-store','','Trust store that holds SSL certificates. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.trust-store-password','','Password used to access the trust store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.trust-store-provider','','Provider for the trust store. Requires a custom management.port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','MANAGEMENT HTTP SERVER','management.ssl.trust-store-type','','Type of the trust store. Requires a custom management.port');
-- HEALTH INDICATORS (previously health.*)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.db.enabled','true','Enable database health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.defaults.enabled','true','Enable default health indicators');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.diskspace.enabled','true','Enable disk space health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.diskspace.path','','Path used to compute the available disk space');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.diskspace.threshold','0','Minimum disk space that should be available, in bytes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.elasticsearch.enabled','true','Enable elasticsearch health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.elasticsearch.indices','','Comma-separated index names');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.elasticsearch.response-timeout','100','The time, in milliseconds, to wait for a response from the cluster');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.jms.enabled','true','Enable JMS health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.mail.enabled','true','Enable Mail health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.mongo.enabled','true','Enable MongoDB health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.rabbit.enabled','true','Enable RabbitMQ health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.redis.enabled','true','Enable Redis health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.solr.enabled','true','Enable Solr health check');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','HEALTH INDICATORS','management.health.status.order','DOWN, OUT_OF_SERVICE, UNKNOWN, UP','Comma-separated list of health statuses in order of severity');
-- INFO CONTRIBUTORS (InfoContributorProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','INFO CONTRIBUTORS','management.info.build.enabled','true','Enable build info');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','INFO CONTRIBUTORS','management.info.defaults.enabled','true','Enable default info contributors');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','INFO CONTRIBUTORS','management.info.env.enabled','true','Enable environment info');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','INFO CONTRIBUTORS','management.info.git.enabled','true','Enable git info');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','INFO CONTRIBUTORS','management.info.git.mode','simple','Mode to use to expose git information');
-- REMOTE SHELL (ShellProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.auth.type','simple','Authentication type. Auto-detected according to the environment');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.auth.jaas.domain','my-domain','JAAS domain');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.auth.key.path','','Path to the authentication key. This should point to a valid ".pem" file');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.auth.simple.user.name','user','Login user');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.auth.simple.user.password','','Login password');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.auth.spring.roles','ADMIN','Comma-separated list of required roles to login to the CRaSH console');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.command-path-patterns','classpath*:/commands/**,classpath*:/crash/commands/**','Patterns to use to look for commands');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.command-refresh-interval','-1','Scan for changes and update the command if necessary (in seconds)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.config-path-patterns','classpath*:/crash/*','Patterns to use to look for configurations');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.disabled-commands','jpa*,jdbc*,jndi*','Comma-separated list of commands to disable');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.disabled-plugins','','Comma-separated list of plugins to disable. Certain plugins are disabled by default based on the environment');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.ssh.auth-timeout ','','Number of milliseconds after user will be prompted to login again');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.ssh.enabled','true','Enable CRaSH SSH support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.ssh.idle-timeout ','','Number of milliseconds after which unused connections are closed');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.ssh.key-path','','Path to the SSH server key');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.ssh.port','2000','SSH port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.telnet.enabled','false','Enable CRaSH telnet support. Enabled by default if the TelnetPlugin is  available');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','REMOTE SHELL','management.shell.telnet.port','5000','Telnet port');
-- TRACING (TraceProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','TRACING','management.trace.include','request-headers,response-headers,cookies,errors','Items to be included in the trace');
-- METRICS EXPORT (MetricExportProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.aggregate.key-pattern','','Pattern that tells the aggregator what to do with the keys from the source repository');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.aggregate.prefix','','Prefix for global repository if active');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.delay-millis','5000','Delay in milliseconds between export ticks. Metrics are exported to external sources on a schedule with this delay');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.enabled','true','Flag to enable metric export (assuming a MetricWriter is available)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.excludes','','List of patterns for metric names to exclude. Applied after the includes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.includes','','List of patterns for metric names to include');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.redis.key','keys.spring.metrics','Key for redis repository export (if active)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.redis.prefix','spring.metrics','Prefix for redis repository if active');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.send-latest','','Flag to switch off any available optimizations based on not exporting unchanged metric values');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.statsd.host','','Host of a statsd server to receive exported metrics');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.statsd.port','8125','Port of a statsd server to receive exported metrics');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.statsd.prefix','','Prefix for statsd exported metrics');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('ACTUATOR PROPERTIES','METRICS EXPORT','spring.metrics.export.triggers.*','','Specific trigger properties per MetricWriter bean name');
-- ----------------------------------------
-- DEVTOOLS PROPERTIES
-- ----------------------------------------
-- DEVTOOLS (DevToolsProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.livereload.enabled','true','Enable a livereload.com compatible server');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.livereload.port','35729','Server port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.additional-exclude','','Additional patterns that should be excluded from triggering a full restart');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.additional-paths','','Additional paths to watch for changes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.enabled','true','Enable automatic restart');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.exclude','META-INF/maven/**,META-INF/resources/**,resources/**,static/**,public/**,templates/**,**/*Test.class,**/*Tests.class,git.properties','Patterns that should be excluded from triggering a full restart');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.poll-interval','1000','Amount of time (in milliseconds) to wait between polling for classpath changes');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.quiet-period','400','Amount of quiet time (in milliseconds) required without any classpath changes before a restart is triggered');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','DEVTOOLS','spring.devtools.restart.trigger-file','','Name of a specific file that when changed will trigger the restart check. If not specified any classpath file change will trigger the restart');
-- REMOTE DEVTOOLS (RemoteDevToolsProperties)
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.context-path','/.~~spring-boot!~','Context path used to handle the remote connection');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.debug.enabled','true','Enable remote debug support');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.debug.local-port','8000','Local remote debug server port');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.proxy.host','','The host of the proxy to use to connect to the remote application');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.proxy.port','','The port of the proxy to use to connect to the remote application');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.restart.enabled','true','Enable remote restart');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.secret','','A shared secret required to establish a connection (required to enable remote support)');
insert into propriedade(categoria,subcategoria,nome,valor,descricao) values ('DEVTOOLS PROPERTIES','REMOTE DEVTOOLS','spring.devtools.remote.secret-header-name','X-AUTH-TOKEN','HTTP header used to transfer the shared secret');