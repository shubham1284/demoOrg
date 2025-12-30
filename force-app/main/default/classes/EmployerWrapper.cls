/*******************************************************
*********************************************************
Apex Class Name    : EmployerWrapper
Created Date       : 04/01/2025
@description       : Wrapper class used to represent Employer details 
                     including contact, plan, broker, rating, filing,
                     and other related information. 
                     This class is intended for Lightning or external 
                     integration usage, exposing structured data.
@author           : Sivakumar
Modification Log  :
Ver   Date         Author               Modification
1.0   04/01/2025   sivakumar            Initial Version
*********************************************************
*********************************************************/


public with sharing class EmployerWrapper {

    // Top-level wrapper fields exposed to Lightning or external calls
    @AuraEnabled public String employerName;
    @AuraEnabled public String industry;
    @AuraEnabled public ContactInfo contactInfo;
    @AuraEnabled public PlanInfo planInfo;
    @AuraEnabled public BrokerInfo brokerInfo;
    @AuraEnabled public RatingInfo ratingInfo;
    @AuraEnabled public FilingInfo filingInfo;
    @AuraEnabled public OtherInfo otherInfo;

    // Wrapper class to hold employer contact-related information
    public class ContactInfo {
        @AuraEnabled public String employerCity;
        @AuraEnabled public String employerLocation;
        @AuraEnabled public String employerWebsite;
        @AuraEnabled public String employerPhone;
        @AuraEnabled public String employerAddress1;
        @AuraEnabled public String employerZip;
        @AuraEnabled public Integer employerNaic; 
        @AuraEnabled public Integer employerId;   // Unique employer identifier
        @AuraEnabled public String employerYearFounded;
    }

    // Wrapper class to hold employer's plan-related information
    public class PlanInfo {
        @AuraEnabled public Boolean welfarePlan;
        @AuraEnabled public Boolean shorFormOnly;     
        @AuraEnabled public Boolean retirementPlan;
        @AuraEnabled public String benefitPlanTypes;  
        @AuraEnabled public String planAttributes;
        @AuraEnabled public String planEnd;
        @AuraEnabled public Date renewalDate;
        @AuraEnabled public Boolean selfFunded;
      @AuraEnabled public Boolean shortForm;
    }

    // Wrapper class to hold broker-related financial and contact info
    public class BrokerInfo {
        @AuraEnabled public String signer;
         @AuraEnabled public String  oppSigner;
        @AuraEnabled public Double brokerComp;           // Broker compensation
        @AuraEnabled public Double modeledBrokerComp;    // Modeled value of broker compensation
        @AuraEnabled public String topBrokerName;
        @AuraEnabled public Double topBrokerPercent;     // Top broker’s share
        @AuraEnabled public Integer yearsWithPrimaryBroker;
    }

    // Wrapper class to hold employer rating and premium-related data
    public class RatingInfo {
        @AuraEnabled public Double employerBenefitRating;
        @AuraEnabled public Double employerOverallRating;
        @AuraEnabled public Double totalPremium;
        @AuraEnabled public Double modeledPremium;    
        @AuraEnabled public Integer participants;    
        @AuraEnabled public String filingStatuses;
    }

    // Wrapper class to represent filing characteristics and compliance status
    public class FilingInfo {
        @AuraEnabled public Boolean amended;
        @AuraEnabled public Boolean filedLate;
        @AuraEnabled public Boolean initialFinancialFiling;
        @AuraEnabled public Boolean finalFinancialFiling;
        @AuraEnabled public Boolean delinquent;
        @AuraEnabled public Boolean filingIssue;
        @AuraEnabled public Boolean collectivelyBargained;
        @AuraEnabled public Boolean mewa;       
        @AuraEnabled public Boolean megaWrap;    
        @AuraEnabled public Boolean initial; 
        @AuraEnabled public Boolean final1; 
    }

    // Wrapper class for miscellaneous information related to employer
    public class OtherInfo {
        @AuraEnabled public Boolean recentJobChange;
        @AuraEnabled public Boolean fidelityBond;     
        @AuraEnabled public String employerEin;       // Employer Identification Number
        @AuraEnabled public Integer maxYearsWithAnyCarrier;
        @AuraEnabled public String topCarrierName;
        @AuraEnabled public Double topCarrierPercent;
        @AuraEnabled public Integer contactCount;  
        @AuraEnabled public Boolean retentionRisk;
    }
}