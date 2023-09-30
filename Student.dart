class Student {
  int idStudent;
  String NameArabic;
  String Name;
  String major;
  String nationality;
  double gpa;
  String permanentEmail;
  int mobileNumber;
  int parentMobile;
  int extraMobile;
  int nationalIdentificationNumberOrIqama;

  // Full Constructor

  Student()
      : idStudent = 0,
        NameArabic = '',
        Name = '',
        major = '',
        nationality = '',
        gpa = 0.0,
        permanentEmail = '',
        mobileNumber = 0,
        parentMobile = 0,
        extraMobile = 0,
        nationalIdentificationNumberOrIqama = 0;

  Student.full(
    this.idStudent,
    this.NameArabic,
    this.Name,
    this.major,
    this.nationality,
    this.gpa,
    this.permanentEmail,
    this.mobileNumber,
    this.parentMobile,
    this.extraMobile,
    this.nationalIdentificationNumberOrIqama,
  );

  Map<String, dynamic> toJson() => {
        'idStudent': idStudent,
        'NameArabic': NameArabic,
        'Name': Name,
        'major': major,
        'nationality': nationality,
        'gpa': gpa,
        'permanentEmail': permanentEmail,
        'mobileNumber': mobileNumber,
        'parentMobile': parentMobile,
        'extraMobile': extraMobile,
        'nationalIdentificationNumberOrIqama':
            nationalIdentificationNumberOrIqama,
      };
  // Getter and Setter for IdStudent
  int getIdStudent() {
    return idStudent;
  }

  void setIdStudent(int id) {
    idStudent = id;
  }

  // Getter and Setter for FirstNameArabic
  String getNameArabic() {
    return NameArabic;
  }

  void setNameArabic(String firstName) {
    NameArabic = firstName;
  }

  // Getter and Setter for FirstName
  String getName() {
    return Name;
  }

  void setName(String firstName) {
    this.Name = firstName;
  }

  // Getter and Setter for Major
  String getMajor() {
    return major;
  }

  void setMajor(String major) {
    this.major = major;
  }

  // Getter and Setter for Nationality
  String getNationality() {
    return nationality;
  }

  void setNationality(String nationality) {
    this.nationality = nationality;
  }

  // Getter and Setter for GPA
  double getGpa() {
    return gpa;
  }

  void setGpa(double gpa) {
    this.gpa = gpa;
  }

  // Getter and Setter for PermanentEmail
  String getPermanentEmail() {
    return permanentEmail;
  }

  void setPermanentEmail(String email) {
    permanentEmail = email;
  }

  // Getter and Setter for MobileNumber
  int getMobileNumber() {
    return mobileNumber;
  }

  void setMobileNumber(int mobileNumber) {
    this.mobileNumber = mobileNumber;
  }

  // Getter and Setter for ParentMobile
  int getParentMobile() {
    return parentMobile;
  }

  void setParentMobile(int parentMobile) {
    this.parentMobile = parentMobile;
  }

  // Getter and Setter for ExtraMobile
  int getExtraMobile() {
    return extraMobile;
  }

  void setExtraMobile(int extraMobile) {
    this.extraMobile = extraMobile;
  }

  // Getter and Setter for NationalIdentificationNumberOrIqama
  int getNationalIdentificationNumberOrIqama() {
    return nationalIdentificationNumberOrIqama;
  }

  void setNationalIdentificationNumberOrIqama(int idOrIqama) {
    nationalIdentificationNumberOrIqama = idOrIqama;
  }
}

  // Continue with similar getter and setter methods for other attributes...

