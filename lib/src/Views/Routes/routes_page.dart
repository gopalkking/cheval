import 'package:cheval/src/Views/Routes/routes_name.dart';
import 'package:cheval/src/Views/Screens/Home/navigator.dart';
import 'package:cheval/src/Views/Screens/New-Enquiry/map_screen.dart';
import 'package:cheval/src/Views/Screens/New-Enquiry/new_enquiry.dart';
import 'package:cheval/src/Views/Screens/New-Enquiry/new_enquiry_2.dart';
import 'package:cheval/src/Views/Screens/New-Enquiry/new_enquiry_success.dart';
import 'package:cheval/src/Views/Screens/Onboard/email_otp.dart';
import 'package:cheval/src/Views/Screens/Onboard/language.dart';
import 'package:cheval/src/Views/Screens/Onboard/login_otp.dart';
import 'package:cheval/src/Views/Screens/Onboard/login_screen.dart';
import 'package:cheval/src/Views/Screens/Onboard/signup_otp.dart';
import 'package:cheval/src/Views/Screens/Onboard/signup_screen.dart';
import 'package:cheval/src/Views/Screens/Onboard/splash_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Communication/communication_view.dart';
import 'package:cheval/src/Views/Screens/Profile/Customer/customer_add.dart';
import 'package:cheval/src/Views/Screens/Profile/Customer/customer_management.dart';
import 'package:cheval/src/Views/Screens/Profile/Customer/customer_view.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/Enquiry_Accepted/consignee_details.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/Enquiry_Accepted/consignor_details.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/Enquiry_Accepted/enquiry_accepted_view.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/address_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/address_view_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/approve_invoice.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/approve_lr.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/bid_accept_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/bid_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/enquiry_management.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/enquiry_view.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/Enquiry_Accepted/generate_lr.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/Enquiry_Accepted/generate_lr_one.dart';
import 'package:cheval/src/Views/Screens/Profile/Enquiry/generate_options_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Help/help.dart';
import 'package:cheval/src/Views/Screens/Profile/Help/help_view.dart';
import 'package:cheval/src/Views/Screens/Profile/Help/raise_ticket.dart';
import 'package:cheval/src/Views/Screens/Profile/Invoice%20&%20Payments/invoice_payments.dart';
import 'package:cheval/src/Views/Screens/Profile/Invoice%20&%20Payments/invoice_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Privacy%20Policy/privacy_policy_tabs.dart';
import 'package:cheval/src/Views/Screens/Profile/Report%20Analytics/report_analytics_tabs.dart';
import 'package:cheval/src/Views/Screens/Profile/Shipment/shipment_management.dart';
import 'package:cheval/src/Views/Screens/Profile/Shipment/shipment_management_tabs.dart';
import 'package:cheval/src/Views/Screens/Profile/Shipment/shipment_view.dart';
import 'package:cheval/src/Views/Screens/Profile/Subscription/current_subscribe.dart';
import 'package:cheval/src/Views/Screens/Profile/Subscription/initial_subscribe.dart';
import 'package:cheval/src/Views/Screens/Profile/Subscription/subscribe_screen.dart';
import 'package:cheval/src/Views/Screens/Profile/Communication/communications.dart';
import 'package:cheval/src/Views/Screens/Profile/edit_profile.dart';
import 'package:cheval/src/Views/Screens/Profile/notifications.dart';
import 'package:cheval/src/Views/Screens/Profile/report.dart';
import 'package:cheval/src/Views/Screens/Profile/terms_of_services.dart';
import 'package:get/get.dart';

class AppRoutes {
  static pages() => [
            GetPage(
            name: Appnames.splash,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.language,
            page: () => const LanguagePage(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.login,
            page: () => const LoginScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.loginOTP,
            page: () => const LoginOtp(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.signup,
            page: () => const SignupScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.signupOTP,
            page: () => const SignupOtp(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.emailOTP,
            page: () => const EmailOTP(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.navigator,
            page: () => NavigatorScreen(
                  index: 0,
                ),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.customerManagement,
            page: () => const CustomerManagement(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.customerView,
            page: () => const CustomerViewScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.customerAdd,
            page: () => const CustomerAddScreeen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.communications,
            page: () => const CommunicationsScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.notification,
            page: () => const NotificationScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.report,
            page: () => const ReportScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.help,
            page: () => const HelpScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.helpraiseticket,
            page: () => const RaiseTicketScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.helpview,
            page: () => const HelpViewScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.newenquiry,
            page: () => const NewEnquiryScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.newenquiry2,
            page: () => const NewEnquiry2Screen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.newenquirysuccess,
            page: () => const NewEnquirySuccess(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.mapscreen,
            page: () => const MapScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.enquiryManagement,
            page: () => const EnquiryManagement(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.enquiryView,
            page: () => const EnquiryViewScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.bid,
            page: () => const BidScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(
            name: Appnames.bidview,
            page: () => const AcceptBidScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.consignordetails, 
            page: () => const ConsignorDetails(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade
            ),
            GetPage(name: Appnames.addressDetails, 
            page: () => const AddressDetails(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.addressViewScreen, 
            page: () => const AddressViewScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.generateLR, 
            page: () => const GenerateLR(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.generateLROne, 
            page: () => const GenerateLROne(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.generateOptions, 
            page: () => const GenerateOptionsScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.shipment, 
            page: () => const ShipmentManagement(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.shipmenttab, 
            page: () => const ShipmentManagementTabs(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.lrapprove, 
            page: () => const ApproveLR(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.approveInvoice, 
            page: () => const ApproveInvoice(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.shipmentView, 
            page: () => const ShipmentView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.subscribeScreen, 
            page: () => const SubscribeScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.currentSubscribe, 
            page: () => const CurrentSubscribe(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.initialSubscribe, 
            page: () => const InitialSubscribe(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.reportAndAnalytics, 
            page: () => const ReportAnalyticsTabs(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.invoiceAndPayments, 
            page: () => const InvoicePayments(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.invoice, 
            page: () => const InvoiceScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.privacyPolicyTabs, 
            page: () => const PrivacyPolicyTabs(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.termsOfServices, 
            page: () => const TermsOfServices(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.editProfile, 
            page: () => const EditProfile(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.enquiryAcceptedView, 
            page: () => const EnquiryAcceptedView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.consigneedetails, 
            page: () => const ConsigneeDetails(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
            GetPage(name: Appnames.communicationView, 
            page: () => const CommunicationView(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.rightToLeftWithFade),
      ];
}
