view: dw_dim_customer_ext_all {
  sql_table_name: dw.dim_customer_ext_all ;;
  dimension: ccid {
    type: string
    hidden: yes
    sql:
       ${TABLE}.ccid
     ;;
  }
  dimension: client_id {
    type: string
    hidden: yes
    sql:
       ${TABLE}.client_id
     ;;
  }
  dimension: customer_id {
    type: string
    hidden: yes
    sql:
       ${TABLE}.customer_id
     ;;
  }
  ####################################################################################
  # replace dimension beneath here, till the measure:
# 2020-05-21 16:33:40.522014
  dimension: Account_Number {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn,bcbsma,citizens_credit_card,hcsc,independence_broker,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Account_Number
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn,bcbsma,citizens_credit_card,hcsc,independence_broker,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Account_Number
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Age {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Age
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Age
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Amount_Paid {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Amount_Paid
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Amount_Paid
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: App_Id {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} App_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.App_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Ar_Reject_Purl {
    type: string
    label:   "{% assign list_of_values = '%,aaa_ma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Ar_Reject_Purl
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aaa_ma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Ar_Reject_Purl
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Associate_Id {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Associate_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Associate_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Beb {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Beb
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Beb
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Benefit_Level {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Benefit_Level
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Benefit_Level
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Benefit_Package {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Benefit_Package
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Benefit_Package
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Bill_Pay {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Bill_Pay
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Bill_Pay
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Birth_Date {
    type: string
    label:   "{% assign list_of_values = '%,rca' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Birth_Date
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,rca' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Birth_Date
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Branch_Name {
    type: string
    label:   "{% assign list_of_values = '%,citizens_heloc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Branch_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_heloc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Branch_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Branch_Number {
    type: string
    label:   "{% assign list_of_values = '%,citizens_heloc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Branch_Number
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_heloc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Branch_Number
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Brand {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Brand
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Brand
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Building_Id {
    type: string
    label:   "{% assign list_of_values = '%,brandywine_realty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Building_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,brandywine_realty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Building_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Building_Name {
    type: string
    label:   "{% assign list_of_values = '%,brandywine_realty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Building_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,brandywine_realty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Building_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Business_Branch {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Business_Branch
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Business_Branch
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Business_Sector_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Business_Sector_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Business_Sector_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: By_Product_Type {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} By_Product_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.By_Product_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: By_State {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} By_State
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.By_State
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Campaign {
    type: string
    label:   "{% assign list_of_values = '%,key_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Campaign
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,key_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Campaign
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Cancel_Flag {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Cancel_Flag
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Cancel_Flag
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Carrier_Id {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Carrier_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Carrier_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Ceb {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Ceb
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Ceb
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Ck_Flag {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Ck_Flag
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Ck_Flag
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Client_800 {
    type: string
    label:   "{% assign list_of_values = '%,mercer' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Client_800
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,mercer' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Client_800
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Client_Channel {
    type: string
    label:   "{% assign list_of_values = '%,direct_energy' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Client_Channel
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,direct_energy' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Client_Channel
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Client_Code {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,bcbs_mn,bcbs_sc,coresource,independence_bluecross,mercer' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Client_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,bcbs_mn,bcbs_sc,coresource,independence_bluecross,mercer' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Client_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Client_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Client_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Client_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Closing_Branch_Assignment {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Closing_Branch_Assignment
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Closing_Branch_Assignment
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Conv_Fee_Amount {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Conv_Fee_Amount
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Conv_Fee_Amount
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Corp_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Corp_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Corp_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Corporation_Id {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Corporation_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Corporation_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Corporation_Name {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Corporation_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Corporation_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Coverage_Type_Rider {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Coverage_Type_Rider
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Coverage_Type_Rider
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Cust_Branch_Name {
    type: string
    label:   "{% assign list_of_values = '%,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Cust_Branch_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Cust_Branch_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Customer_Branch_Name {
    type: string
    label:   "{% assign list_of_values = '%,beneficial' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Customer_Branch_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Customer_Branch_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Customer_Contract_Count {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Customer_Contract_Count
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Customer_Contract_Count
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Customer_Key {
    type: string
    label:   "{% assign list_of_values = '%,fifth_third' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Customer_Key
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,fifth_third' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Customer_Key
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Day_Of_The_Month {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Day_Of_The_Month
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Day_Of_The_Month
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Days {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Days
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Days
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Dba_Name {
    type: string
    label:   "{% assign list_of_values = '%,key_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Dba_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,key_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Dba_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Debit_Card_Flag {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Debit_Card_Flag
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Debit_Card_Flag
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Dental_Coverage_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Dental_Coverage_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Dental_Coverage_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Dental_Group_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Dental_Group_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Dental_Group_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Dental_Product_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Dental_Product_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Dental_Product_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Dental_Product_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Dental_Product_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Dental_Product_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Dependent_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Dependent_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Dependent_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Direct_Deposit {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Direct_Deposit
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Direct_Deposit
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Division {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Division
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Division
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Effective_End_Date {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma,coresource,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Effective_End_Date
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma,coresource,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Effective_End_Date
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Effective_Start_Date {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma,coresource,dominion_national,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Effective_Start_Date
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma,coresource,dominion_national,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Effective_Start_Date
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Elt {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Elt
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Elt
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Email_Address {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Email_Address
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Email_Address
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Employee_Status {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Employee_Status
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Employee_Status
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Employer_Name {
    type: string
    label:   "{% assign list_of_values = '%,healthequity' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Employer_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,healthequity' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Employer_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Entps_Pers_Id {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Entps_Pers_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Entps_Pers_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Expiration_Date {
    type: string
    label:   "{% assign list_of_values = '%,aaa_ma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Expiration_Date
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aaa_ma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Expiration_Date
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_Address1 {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_Address1
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_Address1
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_Address2 {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_Address2
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_Address2
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_City {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_City
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_City
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_Code {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_Name {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_Phone {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_Phone
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_Phone
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_State {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_State
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_State
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Facility_Zip_Code {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Facility_Zip_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Facility_Zip_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Failed_Count {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Failed_Count
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Failed_Count
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Function {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Function
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Function
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Fund_Type_Ds {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Fund_Type_Ds
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Fund_Type_Ds
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Funding_Type {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Funding_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Funding_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Gender {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn,bcbs_ri,coresource,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Gender
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn,bcbs_ri,coresource,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Gender
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Global_Phone {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Global_Phone
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Global_Phone
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Global_Phone2 {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Global_Phone2
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Global_Phone2
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Group_Code {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,bcbs_sc,bcbsma,capital_bluecross,coresource,dominion_national,empower_retirement,independence_bluecross,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Group_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,bcbs_sc,bcbsma,capital_bluecross,coresource,dominion_national,empower_retirement,independence_bluecross,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Group_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Group_Funding_Status_Code {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Group_Funding_Status_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Group_Funding_Status_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Group_Id {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Group_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Group_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Group_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,bcbs_sc_pai,bcbs_sc_tcc,dentaquest_hr,dominion_national,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Group_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,bcbs_sc_pai,bcbs_sc_tcc,dentaquest_hr,dominion_national,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Group_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Group_Plan_Name {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Group_Plan_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Group_Plan_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Group_Type {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,bcbs_sc,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Group_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,bcbs_sc,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Group_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Head_Of_Household_Guardian_Name {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Head_Of_Household_Guardian_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Head_Of_Household_Guardian_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Hierarchy {
    type: string
    label:   "{% assign list_of_values = '%,beneficial' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Hierarchy
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Hierarchy
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Home_Group_Id {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Home_Group_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Home_Group_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Home_Group_Name {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Home_Group_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Home_Group_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Home_Page {
    type: string
    label:   "{% assign list_of_values = '%,healthequity' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Home_Page
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,healthequity' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Home_Page
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Id_Card_Alpha_Prefix {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Id_Card_Alpha_Prefix
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Id_Card_Alpha_Prefix
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Insurance_Type {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Insurance_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Insurance_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Interaction_Id {
    type: string
    label:   "{% assign list_of_values = '%,citizens_credit_card' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Interaction_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_credit_card' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Interaction_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Is_Medicaid {
    type: string
    label:   "{% assign list_of_values = '%,fairview' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Is_Medicaid
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,fairview' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Is_Medicaid
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Is_Medicare {
    type: string
    label:   "{% assign list_of_values = '%,fairview' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Is_Medicare
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,fairview' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Is_Medicare
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Is_Primary {
    type: string
    label:   "{% assign list_of_values = '%,ReCept' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Is_Primary
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,ReCept' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Is_Primary
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Language {
    type: string
    label:   "{% assign list_of_values = '%,bcbstn,dentaquest' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Language
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbstn,dentaquest' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Language
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Legacy_Id1 {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Legacy_Id1
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Legacy_Id1
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Legacy_Id2 {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Legacy_Id2
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Legacy_Id2
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Library {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Library
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Library
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Loan_Flag {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Loan_Flag
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Loan_Flag
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Lob_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc,bcbstn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Lob_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc,bcbstn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Lob_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Lob_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbstn,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Lob_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbstn,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Lob_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Location {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Location
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Location
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Manager {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Manager
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Manager
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Market {
    type: string
    label:   "{% assign list_of_values = '%,citizens_heloc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Market
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_heloc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Market
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Market_Segment_Code {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Market_Segment_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Market_Segment_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Market_Segment_Rollup_Code {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Market_Segment_Rollup_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Market_Segment_Rollup_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Med_Prod_Busn_Type_Cd {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Med_Prod_Busn_Type_Cd
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Med_Prod_Busn_Type_Cd
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Med_Prod_Busn_Type_Ds {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Med_Prod_Busn_Type_Ds
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Med_Prod_Busn_Type_Ds
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Med_Prod_Rglr_Cd {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Med_Prod_Rglr_Cd
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Med_Prod_Rglr_Cd
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Med_Prod_Rglr_Ds {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Med_Prod_Rglr_Ds
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Med_Prod_Rglr_Ds
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Medical_Coverage_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Medical_Coverage_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Medical_Coverage_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Medical_Group_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Medical_Group_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Medical_Group_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Medical_Product_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Medical_Product_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Medical_Product_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Medical_Product_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Medical_Product_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Medical_Product_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Member_Code {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,coresource,healthequity,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Member_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,coresource,healthequity,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Member_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Member_Id {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Member_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Member_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Member_Relationship {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Member_Relationship
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Member_Relationship
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Membership_Key {
    type: string
    label:   "{% assign list_of_values = '%,aaa_ma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Membership_Key
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aaa_ma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Membership_Key
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Mental_Coverage_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Mental_Coverage_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Mental_Coverage_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Message_Code {
    type: string
    label:   "{% assign list_of_values = '%,citizens_credit_card' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Message_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_credit_card' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Message_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field1 {
    type: string
    label:   "{% assign list_of_values = '%,Defenders,citizens_one_loc_vivint,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field1
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,Defenders,citizens_one_loc_vivint,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field1
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field10 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field10
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field10
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field11 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field11
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field11
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field12 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field12
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field12
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field13 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field13
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field13
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field14 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field14
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field14
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field16 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field16
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field16
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field4 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field4
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field4
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field5 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field5
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field5
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field6 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field6
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field6
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field7 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field7
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field7
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field8 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field8
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field8
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Misc_Field9 {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Misc_Field9
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Misc_Field9
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Mobile {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Mobile
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Mobile
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Mobile_Phone {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Mobile_Phone
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Mobile_Phone
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Monthly {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Monthly
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Monthly
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Net_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Net_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Net_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Network {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Network
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Network
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Occupant_Name {
    type: string
    label:   "{% assign list_of_values = '%,brandywine_realty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Occupant_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,brandywine_realty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Occupant_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Occupation {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Occupation
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Occupation
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Office {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Office
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Office
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Office_Name {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Office_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Office_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Office_Phone {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Office_Phone
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Office_Phone
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: On_Exchange_V_Off_Exchange {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} On_Exchange_V_Off_Exchange
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.On_Exchange_V_Off_Exchange
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Opt_In {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Opt_In
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Opt_In
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Parent_Group_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Parent_Group_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Parent_Group_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Participant_Id {
    type: string
    label:   "{% assign list_of_values = '%,empower_retirement' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Participant_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,empower_retirement' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Participant_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Party_Key {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Party_Key
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Party_Key
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Patient_Relationship {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Patient_Relationship
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Patient_Relationship
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Patient_Team {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Patient_Team
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Patient_Team
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Payment_Amount {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Payment_Amount
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Payment_Amount
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Payment_Channel {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Payment_Channel
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Payment_Channel
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Payment_Count {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Payment_Count
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Payment_Count
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Payment_Due_Date {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Payment_Due_Date
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Payment_Due_Date
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Pcp_Group {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Pcp_Group
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Pcp_Group
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Pcp_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,bcbstn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Pcp_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,bcbstn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Pcp_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Pcp_Npi {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Pcp_Npi
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Pcp_Npi
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Pharmacy_Coverage_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Pharmacy_Coverage_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Pharmacy_Coverage_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Pharmacy_Product_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Pharmacy_Product_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Pharmacy_Product_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Pharmacy_Product_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Pharmacy_Product_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Pharmacy_Product_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Plan_Id {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Plan_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Plan_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Plan_Prefix {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Plan_Prefix
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Plan_Prefix
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Policy_Plan_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Policy_Plan_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Policy_Plan_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Practice {
    type: string
    label:   "{% assign list_of_values = '%,care_group,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Practice
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,care_group,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Practice
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number1 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number1
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number1
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number10 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number10
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number10
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number2 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number2
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number2
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number3 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number3
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number3
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number4 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number4
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number4
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number5 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number5
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number5
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number6 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number6
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number6
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number7 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number7
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number7
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number8 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number8
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number8
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prescription_Number9 {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prescription_Number9
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prescription_Number9
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prod_Fam_Cd {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prod_Fam_Cd
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prod_Fam_Cd
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Prod_Fam_Ds {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Prod_Fam_Ds
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Prod_Fam_Ds
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Product_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Product_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Product_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Product_Group {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Product_Group
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Product_Group
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Product_Group_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Product_Group_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Product_Group_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Product_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_mn,beneficial' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Product_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_mn,beneficial' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Product_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Product_Type {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Product_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Product_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Program {
    type: string
    label:   "{% assign list_of_values = '%,aaa_ncnu' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Program
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aaa_ncnu' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Program
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Property_Name {
    type: string
    label:   "{% assign list_of_values = '%,hotwire' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Property_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,hotwire' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Property_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Region {
    type: string
    label:   "{% assign list_of_values = '%,citizens_heloc,hotwire' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Region
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_heloc,hotwire' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Region
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Relationship_Id {
    type: string
    label:   "{% assign list_of_values = '%,key_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Relationship_Id
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,key_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Relationship_Id
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Remote {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Remote
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Remote
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Renewal_Date {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Renewal_Date
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Renewal_Date
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Renewal_Purl {
    type: string
    label:   "{% assign list_of_values = '%,aaa_ma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Renewal_Purl
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aaa_ma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Renewal_Purl
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Reports_To {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Reports_To
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Reports_To
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Role {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Role
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Role
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Safe_Box_Closing_Branch {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Safe_Box_Closing_Branch
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Safe_Box_Closing_Branch
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Saver_V_Non_Saver {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Saver_V_Non_Saver
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Saver_V_Non_Saver
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Schedule_Type {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Schedule_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Schedule_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Slt {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Slt
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Slt
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Source_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Source_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_arkansas' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Source_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Source_System {
    type: string
    label:   "{% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Source_System
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,aha_ia_administrators,independence_bluecross' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Source_System
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Spanish_Preference {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Spanish_Preference
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Spanish_Preference
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Statement_Delivery {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Statement_Delivery
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Statement_Delivery
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Status {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Status
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Status
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Store {
    type: string
    label:   "{% assign list_of_values = '%,ReCept' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Store
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,ReCept' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Store
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Sub_Group_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Sub_Group_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Sub_Group_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Subscriber_Code {
    type: string
    label:   "{% assign list_of_values = '%,coresource' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Subscriber_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,coresource' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Subscriber_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Sv_Flag {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Sv_Flag
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Sv_Flag
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Target_Amount {
    type: string
    label:   "{% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Target_Amount
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,citizens_xbox_all_access' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Target_Amount
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Td_Flag {
    type: string
    label:   "{% assign list_of_values = '%,beneficial' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Td_Flag
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Td_Flag
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Territory {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Territory
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Territory
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Tiered_V_Non_Tiered {
    type: string
    label:   "{% assign list_of_values = '%,tufts' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Tiered_V_Non_Tiered
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,tufts' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Tiered_V_Non_Tiered
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Time_Deposit {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Time_Deposit
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Time_Deposit
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Title_Name {
    type: string
    label:   "{% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Title_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dentaquest_hr' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Title_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Type_Code {
    type: string
    label:   "{% assign list_of_values = '%,southern_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Type_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,southern_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Type_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Type_Code_Description {
    type: string
    label:   "{% assign list_of_values = '%,southern_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Type_Code_Description
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,southern_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Type_Code_Description
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Upi {
    type: string
    label:   "{% assign list_of_values = '%,AllianceRx' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Upi
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,AllianceRx' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Upi
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Upload_Type {
    type: string
    label:   "{% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Upload_Type
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,beneficial,wsfs_bank' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Upload_Type
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Url {
    type: string
    label:   "{% assign list_of_values = '%,mercer' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Url
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,mercer' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Url
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Ussc_Memberid {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Ussc_Memberid
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Ussc_Memberid
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Vision_Coverage_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbsma' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Vision_Coverage_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbsma' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Vision_Coverage_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Vision_Group_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Vision_Group_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Vision_Group_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Vision_Product_Code {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,bcbs_sc' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Vision_Product_Code
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,bcbs_sc' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Vision_Product_Code
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Vision_Product_Name {
    type: string
    label:   "{% assign list_of_values = '%,bcbs_ri,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Vision_Product_Name
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,bcbs_ri,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Vision_Product_Name
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Website {
    type: string
    label:   "{% assign list_of_values = '%,dominion_national' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Website
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,dominion_national' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Website
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Wm_Diabetes {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Wm_Diabetes
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Wm_Diabetes
                {% else %} Null
            {% endif %}
            ;;
  }

  dimension: Wm_Respiratory {
    type: string
    label:   "{% assign list_of_values = '%,us_specialty' | split: ',' %}
    {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
    {% assign bool = false %}
    {% for cid in list_of_clientid %}
    {% for val in list_of_values %}
    {% if cid == val %}
    {% assign bool = true %}
    {% endif %}
    {% endfor %}
    {% endfor %}
    {% if bool %} Wm_Respiratory
    {% else %} zero_unused
    {% endif %}"
    sql:
      {% assign list_of_values = '%,us_specialty' | split: ',' %}
            {% assign list_of_clientid = _user_attributes['allowed_client_id'] | split: ',' %}
            {% assign bool = false %}
            {% for cid in list_of_clientid %}
                {% for val in list_of_values %}
                    {% if cid == val %}
                        {% assign bool = true %}
                    {% endif %}
                {% endfor %}
            {% endfor %}
            {% if bool %} ${TABLE}.Wm_Respiratory
                {% else %} Null
            {% endif %}
            ;;
  }

  ##############################################
  # Don't delete under here.
  measure: count {
    type: count
    hidden: yes
    # drill_fields: [detail*]
  }
}
