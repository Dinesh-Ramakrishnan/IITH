import java.io.IOException;

//Class for StartOfAuthority
public class StartOfAuthority extends DNSRR 
{ 
  private long serial, refresh, retry, expire, ttl;
  private String origin, mailAddress;
  
  protected void decode(DNSInputStream dnsIn) throws IOException 
  {
    origin = dnsIn.readDomainName ();
  
    mailAddress = dnsIn.readDomainName ();
    
    serial = dnsIn.readInt ();
    
    refresh = dnsIn.readInt ();
    
    retry = dnsIn.readInt ();
    
    expire = dnsIn.readInt ();
    
    ttl = dnsIn.readInt ();
  }

  //return corresponding
  public String getOrigin() 
  {
    return origin;
  }

  public String getMailAddress() 
  {
    return mailAddress;
  }

  public long getSerial() 
  {
    return serial;
  }

  public long getRefresh() 
  {
    return refresh;
  }

  public long getRetry()
  {
    return retry;
  }

  public long getExpire()
  {
    return expire;			
  }

  public long getTTL()
  {
    return ttl;
  }

  public String toString() 
  {
    return getRRName () + "\n\torigin = " + origin +
      "\n\tmail addr = " + mailAddress + "\n\tserial = " + serial +
      "\n\trefresh = " + refresh + "\n\tretry = " + retry +
      "\n\texpire = " + expire + "\n\tminimum = " + ttl;
  }
}