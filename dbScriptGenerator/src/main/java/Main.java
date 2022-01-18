import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

public class Main {
  public static void main(String[] args) throws IOException {

    FileReader in = new FileReader("C:\\Users\\rtatli\\tasks\\dbScriptGenerator\\data_import\\FINANCE_TRANSACTIONS.ctl");
    BufferedReader br = new BufferedReader(in);
    String line;
    while ((line = br.readLine()) != null) {
//C:\AIC\ACTIVITY_20211022.pipe
      if (line.contains("INFILE")) {
        String temp = line.substring(0, line.lastIndexOf("."))+"_20211022.pipe";
        System.out.println(temp);
        //C:\AIC\BONUS_ACTS_20211022.pipe

        //       System.out.println(line.replaceAll(temp, "C:\\AIC\\"+perm.toUpperCase()+"_20211022.pipe"));
        //       writer = new BufferedWriter(new FileWriter(line.substring(7, line.lastIndexOf(" ") - 1) + ".ctl", true));
        //        writer.close();

      }else {
        System.out.println(line);
      }

    }
    in.close();



//    generateBatFile();
    //    generateCreateTableScripts();
    //    generateLoaderScripts();
  }

  private static void generateBatFile() {
    List<String> list =
        Arrays.asList("ACTIVITY.ctl", "LP_ACCRUAL_OUT_HEADER.ctl", "LP_FAMILY_POOL_LOG.ctl", "MEMBER_AWD.ctl",
            "ADDRESS.ctl", "LP_ACCRUAL_OUT_RECORD.ctl", "BALANCE.ctl", "LP_ATTACHMENTS.ctl",
            "LP_MEMBER_VERIFICATIONS.ctl", "MEMBER_OPTION_SELECTIONS.ctl", "BONUS_ACTS.ctl", "LP_BILLING_IN_HEADER.ctl",
            "LP_REDEMPTION_EXPIRY_MAP.ctl", "MERGE_POINTERS.ctl", "CARD_HISTORY.ctl", "LP_BILLING_IN_RECORD.ctl",
            "LP_RESERVATIONS.ctl", "PARTNERS_RETRO_CLAIMS.ctl", "COBRAND_SUBSCRIPTION.ctl", "LP_BILLING_OUT_HEADER.ctl",
            "LP_RETRO_IN_HEADER.ctl", "PHONE.ctl", "DE_MERGE_POINTERS.ctl", "LP_BILLING_OUT_RECORD.ctl",
            "LP_RETRO_IN_RECORD.ctl", "RELATIONSHIP_DETAIL.ctl", "EMAIL.ctl", "LP_COMMUNICATION.ctl",
            "LP_RETRO_OUT_HEADER.ctl", "RELATIONSHIP_MASTER.ctl", "FINANCE_TRANSACTIONS.ctl",
            "LP_EXPIRY_EXTEND_REINSTATE.ctl", "LP_RETRO_OUT_RECORD.ctl", "RETRO_CLAIMS.ctl",
            "LP_ACCRUAL_EXPIRY_MAP.ctl", "LP_FAMILY_POOL_ACCEPTANCE.ctl", "LP_STATEMENTS.ctl", "TRAVEL_COORDINATOR.ctl",
            "LP_ACCRUAL_IN_HEADER.ctl", "LP_FAMILY_POOL_DETAILS.ctl", "LP_STATEMENT_FUTURE_EXPIRY.ctl",
            "LP_ACCRUAL_IN_RECORD.ctl", "LP_FAMILY_POOL_HEAD.ctl", "MEMBERS.ctl");
    for (int i = 0; i < list.size(); i++) {
      System.out.println(
          "sqlldr STAGE_DT/STAGE_DT@ILY02PRDLS_DT control=" + list.get(i) + " log=..\\LOGS\\" + list.get(i)
              .substring(0, list.get(i).indexOf(".ctl")) + ".log bad=..\\LOGS\\"+list.get(i)
              .substring(0, list.get(i).indexOf(".ctl"))+".bad direct=true");
    }
  }

  private static void generateLoaderScripts() throws IOException {
    FileReader in = new FileReader("create_tables.txt");
    BufferedReader br = new BufferedReader(in);
    List<String> fileContent = new ArrayList<>();
    String line;
    BufferedWriter writer = null;
    while ((line = br.readLine()) != null) {
      if (line.contains("CREATE TABLE") || line.contains(");")) {
        if (line.contains(");")) {
          writer.close();
        } else {
          writer = new BufferedWriter(new FileWriter(line.substring(12, line.lastIndexOf(" ") - 1) + ".txt", true));
        }

      } else if (line.contains("VARCHAR2")) {
        writer.write(line.substring(0, line.indexOf("VARCHAR2") - 2) + "," + "\n");
      }
    }
    in.close();
  }

  private static void generateCreateTableScripts() throws IOException {
    System.out.println("--------------------------------");
    System.out.println("CREATE TABLE MERGE_POINTERS ( ");

    List<String> nameContent = readFile("name.txt");
    //    System.out.println(nameContent);
    List<String> lengthContent = readFile("length.txt");
    transformLengths(lengthContent);
    //        System.out.println(lengthContent);

    for (int i = 0; i < nameContent.size(); i++) {
      if (i == nameContent.size() - 1) {
        System.out.println(
            nameContent.get(i).replaceAll(" ", "_").toUpperCase() + "  " + "VARCHAR2(" + lengthContent.get(i) + ")");
      } else {
        System.out.println(
            nameContent.get(i).replaceAll(" ", "_").toUpperCase() + "  " + "VARCHAR2(" + lengthContent.get(i) + "),");
      }
    }
    System.out.println(");");
  }

  private static void transformLengths(List<String> lengthContent) {
    int j = 0;
    for (String number : lengthContent) {
      if (number.contains(",")) {
        lengthContent.set(j, number.substring(0, number.indexOf(",")));
      }
      j++;
    }
  }

  private static List<String> readFile(String fileToRead) throws IOException {
    FileReader in = new FileReader(fileToRead);
    BufferedReader br = new BufferedReader(in);
    List<String> fileContent = new ArrayList<>();
    String line;
    while ((line = br.readLine()) != null) {
      fileContent.add(line);
    }
    in.close();
    return fileContent;
  }
}
