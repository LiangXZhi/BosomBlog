package com.bosomblog.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NotifyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public NotifyExample() {
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

        public Criteria andNotityIdIsNull() {
            addCriterion("notity_id is null");
            return (Criteria) this;
        }

        public Criteria andNotityIdIsNotNull() {
            addCriterion("notity_id is not null");
            return (Criteria) this;
        }

        public Criteria andNotityIdEqualTo(Integer value) {
            addCriterion("notity_id =", value, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdNotEqualTo(Integer value) {
            addCriterion("notity_id <>", value, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdGreaterThan(Integer value) {
            addCriterion("notity_id >", value, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("notity_id >=", value, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdLessThan(Integer value) {
            addCriterion("notity_id <", value, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdLessThanOrEqualTo(Integer value) {
            addCriterion("notity_id <=", value, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdIn(List<Integer> values) {
            addCriterion("notity_id in", values, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdNotIn(List<Integer> values) {
            addCriterion("notity_id not in", values, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdBetween(Integer value1, Integer value2) {
            addCriterion("notity_id between", value1, value2, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityIdNotBetween(Integer value1, Integer value2) {
            addCriterion("notity_id not between", value1, value2, "notityId");
            return (Criteria) this;
        }

        public Criteria andNotityTitleIsNull() {
            addCriterion("notity_title is null");
            return (Criteria) this;
        }

        public Criteria andNotityTitleIsNotNull() {
            addCriterion("notity_title is not null");
            return (Criteria) this;
        }

        public Criteria andNotityTitleEqualTo(String value) {
            addCriterion("notity_title =", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleNotEqualTo(String value) {
            addCriterion("notity_title <>", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleGreaterThan(String value) {
            addCriterion("notity_title >", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleGreaterThanOrEqualTo(String value) {
            addCriterion("notity_title >=", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleLessThan(String value) {
            addCriterion("notity_title <", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleLessThanOrEqualTo(String value) {
            addCriterion("notity_title <=", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleLike(String value) {
            addCriterion("notity_title like", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleNotLike(String value) {
            addCriterion("notity_title not like", value, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleIn(List<String> values) {
            addCriterion("notity_title in", values, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleNotIn(List<String> values) {
            addCriterion("notity_title not in", values, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleBetween(String value1, String value2) {
            addCriterion("notity_title between", value1, value2, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityTitleNotBetween(String value1, String value2) {
            addCriterion("notity_title not between", value1, value2, "notityTitle");
            return (Criteria) this;
        }

        public Criteria andNotityContentIsNull() {
            addCriterion("notity_content is null");
            return (Criteria) this;
        }

        public Criteria andNotityContentIsNotNull() {
            addCriterion("notity_content is not null");
            return (Criteria) this;
        }

        public Criteria andNotityContentEqualTo(String value) {
            addCriterion("notity_content =", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentNotEqualTo(String value) {
            addCriterion("notity_content <>", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentGreaterThan(String value) {
            addCriterion("notity_content >", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentGreaterThanOrEqualTo(String value) {
            addCriterion("notity_content >=", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentLessThan(String value) {
            addCriterion("notity_content <", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentLessThanOrEqualTo(String value) {
            addCriterion("notity_content <=", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentLike(String value) {
            addCriterion("notity_content like", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentNotLike(String value) {
            addCriterion("notity_content not like", value, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentIn(List<String> values) {
            addCriterion("notity_content in", values, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentNotIn(List<String> values) {
            addCriterion("notity_content not in", values, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentBetween(String value1, String value2) {
            addCriterion("notity_content between", value1, value2, "notityContent");
            return (Criteria) this;
        }

        public Criteria andNotityContentNotBetween(String value1, String value2) {
            addCriterion("notity_content not between", value1, value2, "notityContent");
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

        public Criteria andVisibleIsNull() {
            addCriterion("visible is null");
            return (Criteria) this;
        }

        public Criteria andVisibleIsNotNull() {
            addCriterion("visible is not null");
            return (Criteria) this;
        }

        public Criteria andVisibleEqualTo(Integer value) {
            addCriterion("visible =", value, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleNotEqualTo(Integer value) {
            addCriterion("visible <>", value, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleGreaterThan(Integer value) {
            addCriterion("visible >", value, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleGreaterThanOrEqualTo(Integer value) {
            addCriterion("visible >=", value, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleLessThan(Integer value) {
            addCriterion("visible <", value, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleLessThanOrEqualTo(Integer value) {
            addCriterion("visible <=", value, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleIn(List<Integer> values) {
            addCriterion("visible in", values, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleNotIn(List<Integer> values) {
            addCriterion("visible not in", values, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleBetween(Integer value1, Integer value2) {
            addCriterion("visible between", value1, value2, "visible");
            return (Criteria) this;
        }

        public Criteria andVisibleNotBetween(Integer value1, Integer value2) {
            addCriterion("visible not between", value1, value2, "visible");
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