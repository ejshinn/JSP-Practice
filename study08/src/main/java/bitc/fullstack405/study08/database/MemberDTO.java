package bitc.fullstack405.study08.database;

// 데이터베이스의 member 테이블과 연동되도록 필드를 선언
public class MemberDTO {
    // 멤버 변수 선언
    private String id;
    private String pass;
    private String name;
    private String regiDate;

    // getter/setter
    public String getId() {
    return id;
  }

    public void setId(String id) {
    this.id = id;
  }

    public String getPass() {
    return pass;
  }

    public void setPass(String pass) {
    this.pass = pass;
  }

    public String getName() {
    return name;
  }

    public void setName(String name) {
    this.name = name;
  }

    public String getRegiDate() {
    return regiDate;
  }

    public void setRegiDate(String regiDate) {
    this.regiDate = regiDate;
  }
}