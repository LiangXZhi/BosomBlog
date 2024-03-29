package com.bosomblog.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SuggestExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SuggestExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andSidIsNull() {
            addCriterion("sid is null");
            return (Criteria) this;
        }

        public Criteria andSidIsNotNull() {
            addCriterion("sid is not null");
            return (Criteria) this;
        }

        public Criteria andSidEqualTo(Integer value) {
            addCriterion("sid =", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotEqualTo(Integer value) {
            addCriterion("sid <>", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThan(Integer value) {
            addCriterion("sid >", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidGreaterThanOrEqualTo(Integer value) {
            addCriterion("sid >=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThan(Integer value) {
            addCriterion("sid <", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidLessThanOrEqualTo(Integer value) {
            addCriterion("sid <=", value, "sid");
            return (Criteria) this;
        }

        public Criteria andSidIn(List<Integer> values) {
            addCriterion("sid in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotIn(List<Integer> values) {
            addCriterion("sid not in", values, "sid");
            return (Criteria) this;
        }

        public Criteria andSidBetween(Integer value1, Integer value2) {
            addCriterion("sid between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andSidNotBetween(Integer value1, Integer value2) {
            addCriterion("sid not between", value1, value2, "sid");
            return (Criteria) this;
        }

        public Criteria andUsersidIsNull() {
            addCriterion("usersId is null");
            return (Criteria) this;
        }

        public Criteria andUsersidIsNotNull() {
            addCriterion("usersId is not null");
            return (Criteria) this;
        }

        public Criteria andUsersidEqualTo(Integer value) {
            addCriterion("usersId =", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidNotEqualTo(Integer value) {
            addCriterion("usersId <>", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidGreaterThan(Integer value) {
            addCriterion("usersId >", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidGreaterThanOrEqualTo(Integer value) {
            addCriterion("usersId >=", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidLessThan(Integer value) {
            addCriterion("usersId <", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidLessThanOrEqualTo(Integer value) {
            addCriterion("usersId <=", value, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidIn(List<Integer> values) {
            addCriterion("usersId in", values, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidNotIn(List<Integer> values) {
            addCriterion("usersId not in", values, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidBetween(Integer value1, Integer value2) {
            addCriterion("usersId between", value1, value2, "usersid");
            return (Criteria) this;
        }

        public Criteria andUsersidNotBetween(Integer value1, Integer value2) {
            addCriterion("usersId not between", value1, value2, "usersid");
            return (Criteria) this;
        }

        public Criteria andStitleIsNull() {
            addCriterion("stitle is null");
            return (Criteria) this;
        }

        public Criteria andStitleIsNotNull() {
            addCriterion("stitle is not null");
            return (Criteria) this;
        }

        public Criteria andStitleEqualTo(String value) {
            addCriterion("stitle =", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleNotEqualTo(String value) {
            addCriterion("stitle <>", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleGreaterThan(String value) {
            addCriterion("stitle >", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleGreaterThanOrEqualTo(String value) {
            addCriterion("stitle >=", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleLessThan(String value) {
            addCriterion("stitle <", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleLessThanOrEqualTo(String value) {
            addCriterion("stitle <=", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleLike(String value) {
            addCriterion("stitle like", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleNotLike(String value) {
            addCriterion("stitle not like", value, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleIn(List<String> values) {
            addCriterion("stitle in", values, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleNotIn(List<String> values) {
            addCriterion("stitle not in", values, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleBetween(String value1, String value2) {
            addCriterion("stitle between", value1, value2, "stitle");
            return (Criteria) this;
        }

        public Criteria andStitleNotBetween(String value1, String value2) {
            addCriterion("stitle not between", value1, value2, "stitle");
            return (Criteria) this;
        }

        public Criteria andScontentIsNull() {
            addCriterion("scontent is null");
            return (Criteria) this;
        }

        public Criteria andScontentIsNotNull() {
            addCriterion("scontent is not null");
            return (Criteria) this;
        }

        public Criteria andScontentEqualTo(String value) {
            addCriterion("scontent =", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentNotEqualTo(String value) {
            addCriterion("scontent <>", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentGreaterThan(String value) {
            addCriterion("scontent >", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentGreaterThanOrEqualTo(String value) {
            addCriterion("scontent >=", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentLessThan(String value) {
            addCriterion("scontent <", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentLessThanOrEqualTo(String value) {
            addCriterion("scontent <=", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentLike(String value) {
            addCriterion("scontent like", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentNotLike(String value) {
            addCriterion("scontent not like", value, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentIn(List<String> values) {
            addCriterion("scontent in", values, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentNotIn(List<String> values) {
            addCriterion("scontent not in", values, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentBetween(String value1, String value2) {
            addCriterion("scontent between", value1, value2, "scontent");
            return (Criteria) this;
        }

        public Criteria andScontentNotBetween(String value1, String value2) {
            addCriterion("scontent not between", value1, value2, "scontent");
            return (Criteria) this;
        }

        public Criteria andSendtimeIsNull() {
            addCriterion("sendTime is null");
            return (Criteria) this;
        }

        public Criteria andSendtimeIsNotNull() {
            addCriterion("sendTime is not null");
            return (Criteria) this;
        }

        public Criteria andSendtimeEqualTo(Date value) {
            addCriterion("sendTime =", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotEqualTo(Date value) {
            addCriterion("sendTime <>", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeGreaterThan(Date value) {
            addCriterion("sendTime >", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("sendTime >=", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeLessThan(Date value) {
            addCriterion("sendTime <", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeLessThanOrEqualTo(Date value) {
            addCriterion("sendTime <=", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeIn(List<Date> values) {
            addCriterion("sendTime in", values, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotIn(List<Date> values) {
            addCriterion("sendTime not in", values, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeBetween(Date value1, Date value2) {
            addCriterion("sendTime between", value1, value2, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotBetween(Date value1, Date value2) {
            addCriterion("sendTime not between", value1, value2, "sendtime");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}