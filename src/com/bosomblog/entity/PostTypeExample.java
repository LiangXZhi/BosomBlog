package com.bosomblog.entity;

import java.util.ArrayList;
import java.util.List;

public class PostTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostTypeExample() {
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

        public Criteria andPtypeIdIsNull() {
            addCriterion("ptype_id is null");
            return (Criteria) this;
        }

        public Criteria andPtypeIdIsNotNull() {
            addCriterion("ptype_id is not null");
            return (Criteria) this;
        }

        public Criteria andPtypeIdEqualTo(Integer value) {
            addCriterion("ptype_id =", value, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdNotEqualTo(Integer value) {
            addCriterion("ptype_id <>", value, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdGreaterThan(Integer value) {
            addCriterion("ptype_id >", value, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ptype_id >=", value, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdLessThan(Integer value) {
            addCriterion("ptype_id <", value, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdLessThanOrEqualTo(Integer value) {
            addCriterion("ptype_id <=", value, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdIn(List<Integer> values) {
            addCriterion("ptype_id in", values, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdNotIn(List<Integer> values) {
            addCriterion("ptype_id not in", values, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdBetween(Integer value1, Integer value2) {
            addCriterion("ptype_id between", value1, value2, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ptype_id not between", value1, value2, "ptypeId");
            return (Criteria) this;
        }

        public Criteria andPtypeNameIsNull() {
            addCriterion("ptype_name is null");
            return (Criteria) this;
        }

        public Criteria andPtypeNameIsNotNull() {
            addCriterion("ptype_name is not null");
            return (Criteria) this;
        }

        public Criteria andPtypeNameEqualTo(String value) {
            addCriterion("ptype_name =", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameNotEqualTo(String value) {
            addCriterion("ptype_name <>", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameGreaterThan(String value) {
            addCriterion("ptype_name >", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameGreaterThanOrEqualTo(String value) {
            addCriterion("ptype_name >=", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameLessThan(String value) {
            addCriterion("ptype_name <", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameLessThanOrEqualTo(String value) {
            addCriterion("ptype_name <=", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameLike(String value) {
            addCriterion("ptype_name like", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameNotLike(String value) {
            addCriterion("ptype_name not like", value, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameIn(List<String> values) {
            addCriterion("ptype_name in", values, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameNotIn(List<String> values) {
            addCriterion("ptype_name not in", values, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameBetween(String value1, String value2) {
            addCriterion("ptype_name between", value1, value2, "ptypeName");
            return (Criteria) this;
        }

        public Criteria andPtypeNameNotBetween(String value1, String value2) {
            addCriterion("ptype_name not between", value1, value2, "ptypeName");
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