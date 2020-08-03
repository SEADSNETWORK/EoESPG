// test Github

public class EoEData {
  int bagAmount;
  int sampleAmount;
  int dataPointAmount;
  int original[];
  int modified[];
  
  public EoEData(int ba, int sa, int dpa, int[] o, int[] m){
    bagAmount = ba;
    sampleAmount = sa;
    dataPointAmount = dpa;
    original = o;
    modified = m;
  }
  
}

EoEData data;

void loadData(){
  JSONObject json = loadJSONObject("EoE-code.json");
  data = new EoEData(json.getInt("bagAmount"), 
                    json.getInt("sampleAmount"),
                    json.getInt("amountOfDataPoints"),
                    json.getJSONArray("allOriginal").getIntArray(),
                    json.getJSONArray("allModified").getIntArray());
}

void setup() {
  loadData();
  println(data.bagAmount);
}
