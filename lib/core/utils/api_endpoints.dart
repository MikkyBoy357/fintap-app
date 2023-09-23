class ApiEndpoints {
  static const baseUrl = "http://api.fintap.ng/api/v1";

//auth endpoints
  static const login = "$baseUrl/login";

  static const refreshToken = "$baseUrl/refresh-token";

  static const register = "$baseUrl/register";
  static const verifyEmail = "${baseUrl}auth/email/verify";

  static const forgetPassword = "$baseUrl/forgotpassword";
  static const resetPassword = "$baseUrl/resetpassword";

// services endpoints
  static const fetchServices = "$baseUrl/services";
  static const airtimeServices = "$baseUrl/services/airtime";
  static const dataServices = "$baseUrl/services/data";
  static const electricityServices = "$baseUrl/services/electricity";
  static const cableTvServices = "$baseUrl/services/cable-tv";
  static const getInvestmentPlans = "$baseUrl/services/investments";

// user endpoints
  static const profile = "$baseUrl/profile";
  static const referals = "$baseUrl/referals";
  static const virtualAccount = "$baseUrl/virtual-account";

// transactions endpoints
  static const buyAirtime = "$baseUrl/airtime";
  static const buyData = "$baseUrl/data";
  static const buyElectricity = "$baseUrl/electricity";
  static const buyCableTv = "$baseUrl/cabletv";

  // investment endpoints
  static const createInvestment = "$baseUrl/invest";
  static const getInvestments = "$baseUrl/investments";
  static const withdrawInvestment = "$baseUrl/withdraw/";

  static const verifyMerchant = "$baseUrl/verify-merchant";

  static const getTransactions = "$baseUrl/transactions";

// wallet endpoints
  static const searchFintapers = "$baseUrl/search-fintaper";
  static const walletTransfer = "$baseUrl/wallet-transfer";
  static const withdrawToBank = "$baseUrl/withdraw";

// beneficiaries endpoinst
  static const beneficiaries = "$baseUrl/beneficiary";
  static const banks = "$baseUrl/banks";
  static const resolveAccount = "$baseUrl/resolve-account";
}
