class ApiEndpoints {
  ApiEndpoints._();

  static String doctorDetail = "doctor/getDoctorDetails";
  static String doctorConsultationDetails =
      "doctor/getDoctorConsultationDetails";
  static String allEarningDetails = "appointment/getAllEarningDetailsForDoctor";
  static String doctorLogin = "doctor/login";
  static String verifyOTP = "doctor/verifyOTP";
  static String getAllPatientDetailsByAppliedFilters =
      "patient/getAllPatientDetailsByAppliedFilters";
  static String savePrescriptions = "prescription/savePrescription";
  static String allAdvices = "advice/getAllAdvices";
  static String appointmentFileUpload = "appointment/uploadFilesForAppointment";
  static String medicineData = "medicine/getAllPossibleEnumMedicineValues";
  static String appointmentStatus = "appointment/updateStatusOfAppointment";
  static String appointmentById = "appointment/getAppointmentById";
}
