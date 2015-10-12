package com.jin.service;

import java.io.InputStream;
import java.nio.charset.Charset;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.entity.ContentType;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;





public class Http {
	public static String getHtml(HttpClient httpClient, String url)  {

        
        CloseableHttpClient httpclient = HttpClients.createDefault();
        try {
           
            HttpGet httpGet = new HttpGet(url);
            
            CloseableHttpResponse responseGet = httpclient.execute(httpGet);

            try {
               
                HttpEntity entity = responseGet.getEntity();

                if (entity != null) {
                    ContentType contentType = ContentType.getOrDefault(entity);
                    Charset charset = contentType.getCharset();
                    InputStream is = entity.getContent();
                    String htmlString = IOUtils.toString(is);
                    is.close();
                return htmlString;
                }
            } finally {
                responseGet.close();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return null;
    }
}
