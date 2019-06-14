package com.bosomblog.entity;

import java.util.ArrayList;
import java.util.List;

public class BlogsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BlogsExample() {
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

        public Criteria andBidIsNull() {
            addCriterion("bid is null");
            return (Criteria) this;
        }

        public Criteria andBidIsNotNull() {
            addCriterion("bid is not null");
            return (Criteria) this;
        }

        public Criteria andBidEqualTo(Integer value) {
            addCriterion("bid =", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotEqualTo(Integer value) {
            addCriterion("bid <>", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThan(Integer value) {
            addCriterion("bid >", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidGreaterThanOrEqualTo(Integer value) {
            addCriterion("bid >=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThan(Integer value) {
            addCriterion("bid <", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidLessThanOrEqualTo(Integer value) {
            addCriterion("bid <=", value, "bid");
            return (Criteria) this;
        }

        public Criteria andBidIn(List<Integer> values) {
            addCriterion("bid in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotIn(List<Integer> values) {
            addCriterion("bid not in", values, "bid");
            return (Criteria) this;
        }

        public Criteria andBidBetween(Integer value1, Integer value2) {
            addCriterion("bid between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBidNotBetween(Integer value1, Integer value2) {
            addCriterion("bid not between", value1, value2, "bid");
            return (Criteria) this;
        }

        public Criteria andBnameIsNull() {
            addCriterion("bname is null");
            return (Criteria) this;
        }

        public Criteria andBnameIsNotNull() {
            addCriterion("bname is not null");
            return (Criteria) this;
        }

        public Criteria andBnameEqualTo(String value) {
            addCriterion("bname =", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotEqualTo(String value) {
            addCriterion("bname <>", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameGreaterThan(String value) {
            addCriterion("bname >", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameGreaterThanOrEqualTo(String value) {
            addCriterion("bname >=", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLessThan(String value) {
            addCriterion("bname <", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLessThanOrEqualTo(String value) {
            addCriterion("bname <=", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameLike(String value) {
            addCriterion("bname like", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotLike(String value) {
            addCriterion("bname not like", value, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameIn(List<String> values) {
            addCriterion("bname in", values, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotIn(List<String> values) {
            addCriterion("bname not in", values, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameBetween(String value1, String value2) {
            addCriterion("bname between", value1, value2, "bname");
            return (Criteria) this;
        }

        public Criteria andBnameNotBetween(String value1, String value2) {
            addCriterion("bname not between", value1, value2, "bname");
            return (Criteria) this;
        }

        public Criteria andBintroIsNull() {
            addCriterion("bintro is null");
            return (Criteria) this;
        }

        public Criteria andBintroIsNotNull() {
            addCriterion("bintro is not null");
            return (Criteria) this;
        }

        public Criteria andBintroEqualTo(String value) {
            addCriterion("bintro =", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroNotEqualTo(String value) {
            addCriterion("bintro <>", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroGreaterThan(String value) {
            addCriterion("bintro >", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroGreaterThanOrEqualTo(String value) {
            addCriterion("bintro >=", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroLessThan(String value) {
            addCriterion("bintro <", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroLessThanOrEqualTo(String value) {
            addCriterion("bintro <=", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroLike(String value) {
            addCriterion("bintro like", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroNotLike(String value) {
            addCriterion("bintro not like", value, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroIn(List<String> values) {
            addCriterion("bintro in", values, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroNotIn(List<String> values) {
            addCriterion("bintro not in", values, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroBetween(String value1, String value2) {
            addCriterion("bintro between", value1, value2, "bintro");
            return (Criteria) this;
        }

        public Criteria andBintroNotBetween(String value1, String value2) {
            addCriterion("bintro not between", value1, value2, "bintro");
            return (Criteria) this;
        }

        public Criteria andBteamIsNull() {
            addCriterion("bteam is null");
            return (Criteria) this;
        }

        public Criteria andBteamIsNotNull() {
            addCriterion("bteam is not null");
            return (Criteria) this;
        }

        public Criteria andBteamEqualTo(String value) {
            addCriterion("bteam =", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamNotEqualTo(String value) {
            addCriterion("bteam <>", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamGreaterThan(String value) {
            addCriterion("bteam >", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamGreaterThanOrEqualTo(String value) {
            addCriterion("bteam >=", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamLessThan(String value) {
            addCriterion("bteam <", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamLessThanOrEqualTo(String value) {
            addCriterion("bteam <=", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamLike(String value) {
            addCriterion("bteam like", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamNotLike(String value) {
            addCriterion("bteam not like", value, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamIn(List<String> values) {
            addCriterion("bteam in", values, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamNotIn(List<String> values) {
            addCriterion("bteam not in", values, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamBetween(String value1, String value2) {
            addCriterion("bteam between", value1, value2, "bteam");
            return (Criteria) this;
        }

        public Criteria andBteamNotBetween(String value1, String value2) {
            addCriterion("bteam not between", value1, value2, "bteam");
            return (Criteria) this;
        }

        public Criteria andBsloganIsNull() {
            addCriterion("bslogan is null");
            return (Criteria) this;
        }

        public Criteria andBsloganIsNotNull() {
            addCriterion("bslogan is not null");
            return (Criteria) this;
        }

        public Criteria andBsloganEqualTo(String value) {
            addCriterion("bslogan =", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganNotEqualTo(String value) {
            addCriterion("bslogan <>", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganGreaterThan(String value) {
            addCriterion("bslogan >", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganGreaterThanOrEqualTo(String value) {
            addCriterion("bslogan >=", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganLessThan(String value) {
            addCriterion("bslogan <", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganLessThanOrEqualTo(String value) {
            addCriterion("bslogan <=", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganLike(String value) {
            addCriterion("bslogan like", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganNotLike(String value) {
            addCriterion("bslogan not like", value, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganIn(List<String> values) {
            addCriterion("bslogan in", values, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganNotIn(List<String> values) {
            addCriterion("bslogan not in", values, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganBetween(String value1, String value2) {
            addCriterion("bslogan between", value1, value2, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBsloganNotBetween(String value1, String value2) {
            addCriterion("bslogan not between", value1, value2, "bslogan");
            return (Criteria) this;
        }

        public Criteria andBcontactIsNull() {
            addCriterion("bcontact is null");
            return (Criteria) this;
        }

        public Criteria andBcontactIsNotNull() {
            addCriterion("bcontact is not null");
            return (Criteria) this;
        }

        public Criteria andBcontactEqualTo(String value) {
            addCriterion("bcontact =", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactNotEqualTo(String value) {
            addCriterion("bcontact <>", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactGreaterThan(String value) {
            addCriterion("bcontact >", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactGreaterThanOrEqualTo(String value) {
            addCriterion("bcontact >=", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactLessThan(String value) {
            addCriterion("bcontact <", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactLessThanOrEqualTo(String value) {
            addCriterion("bcontact <=", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactLike(String value) {
            addCriterion("bcontact like", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactNotLike(String value) {
            addCriterion("bcontact not like", value, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactIn(List<String> values) {
            addCriterion("bcontact in", values, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactNotIn(List<String> values) {
            addCriterion("bcontact not in", values, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactBetween(String value1, String value2) {
            addCriterion("bcontact between", value1, value2, "bcontact");
            return (Criteria) this;
        }

        public Criteria andBcontactNotBetween(String value1, String value2) {
            addCriterion("bcontact not between", value1, value2, "bcontact");
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