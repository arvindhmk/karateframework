package karateforapi.karate;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit4.Karate;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import static org.junit.Assert.*;
import org.junit.Test;
import org.junit.runner.RunWith;


@RunWith(Karate.class)
@KarateOptions(features="classpath:")
public class Runkarate 
{

//	@Test
//    public void testParallel() 
//	{
//		Results results = Runner.path("src\\main\\java\\karateforapi\\karate").tags("~@ignore").parallel(5);
//        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
//        generateReport(results.getReportDir());
//        
//		
////        Results results = Runner.parallel(getClass(),5);
////        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
//        
//    }
//    
//	public static void generateReport(String karateOutputPath) {        
//        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
//        List<String> jsonPaths = new ArrayList(jsonFiles.size());
//        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
//        Configuration config = new Configuration(new File("target"), "demo");
//        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
//        reportBuilder.generateReports();
//      
}
