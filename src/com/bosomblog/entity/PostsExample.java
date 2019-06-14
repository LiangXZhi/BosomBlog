package com.bosomblog.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PostsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public PostsExample() {
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

        public Criteria andPidIsNull() {
            addCriterion("pid is null");
            return (Criteria) this;
        }

        public Criteria andPidIsNotNull() {
            addCriterion("pid is not null");
            return (Criteria) this;
        }

        public Criteria andPidEqualTo(Integer value) {
            addCriterion("pid =", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotEqualTo(Integer value) {
            addCriterion("pid <>", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThan(Integer value) {
            addCriterion("pid >", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidGreaterThanOrEqualTo(Integer value) {
            addCriterion("pid >=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThan(Integer value) {
            addCriterion("pid <", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidLessThanOrEqualTo(Integer value) {
            addCriterion("pid <=", value, "pid");
            return (Criteria) this;
        }

        public Criteria andPidIn(List<Integer> values) {
            addCriterion("pid in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotIn(List<Integer> values) {
            addCriterion("pid not in", values, "pid");
            return (Criteria) this;
        }

        public Criteria andPidBetween(Integer value1, Integer value2) {
            addCriterion("pid between", value1, value2, "pid");
            return (Criteria) this;
        }

        public Criteria andPidNotBetween(Integer value1, Integer value2) {
            addCriterion("pid not between", value1, value2, "pid");
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

        public Criteria andPtitleIsNull() {
            addCriterion("ptitle is null");
            return (Criteria) this;
        }

        public Criteria andPtitleIsNotNull() {
            addCriterion("ptitle is not null");
            return (Criteria) this;
        }

        public Criteria andPtitleEqualTo(String value) {
            addCriterion("ptitle =", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleNotEqualTo(String value) {
            addCriterion("ptitle <>", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleGreaterThan(String value) {
            addCriterion("ptitle >", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleGreaterThanOrEqualTo(String value) {
            addCriterion("ptitle >=", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleLessThan(String value) {
            addCriterion("ptitle <", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleLessThanOrEqualTo(String value) {
            addCriterion("ptitle <=", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleLike(String value) {
            addCriterion("ptitle like", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleNotLike(String value) {
            addCriterion("ptitle not like", value, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleIn(List<String> values) {
            addCriterion("ptitle in", values, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleNotIn(List<String> values) {
            addCriterion("ptitle not in", values, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleBetween(String value1, String value2) {
            addCriterion("ptitle between", value1, value2, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPtitleNotBetween(String value1, String value2) {
            addCriterion("ptitle not between", value1, value2, "ptitle");
            return (Criteria) this;
        }

        public Criteria andPcontentIsNull() {
            addCriterion("pcontent is null");
            return (Criteria) this;
        }

        public Criteria andPcontentIsNotNull() {
            addCriterion("pcontent is not null");
            return (Criteria) this;
        }

        public Criteria andPcontentEqualTo(String value) {
            addCriterion("pcontent =", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentNotEqualTo(String value) {
            addCriterion("pcontent <>", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentGreaterThan(String value) {
            addCriterion("pcontent >", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentGreaterThanOrEqualTo(String value) {
            addCriterion("pcontent >=", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentLessThan(String value) {
            addCriterion("pcontent <", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentLessThanOrEqualTo(String value) {
            addCriterion("pcontent <=", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentLike(String value) {
            addCriterion("pcontent like", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentNotLike(String value) {
            addCriterion("pcontent not like", value, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentIn(List<String> values) {
            addCriterion("pcontent in", values, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentNotIn(List<String> values) {
            addCriterion("pcontent not in", values, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentBetween(String value1, String value2) {
            addCriterion("pcontent between", value1, value2, "pcontent");
            return (Criteria) this;
        }

        public Criteria andPcontentNotBetween(String value1, String value2) {
            addCriterion("pcontent not between", value1, value2, "pcontent");
            return (Criteria) this;
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

        public Criteria andPdateIsNull() {
            addCriterion("pdate is null");
            return (Criteria) this;
        }

        public Criteria andPdateIsNotNull() {
            addCriterion("pdate is not null");
            return (Criteria) this;
        }

        public Criteria andPdateEqualTo(Date value) {
            addCriterion("pdate =", value, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateNotEqualTo(Date value) {
            addCriterion("pdate <>", value, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateGreaterThan(Date value) {
            addCriterion("pdate >", value, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateGreaterThanOrEqualTo(Date value) {
            addCriterion("pdate >=", value, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateLessThan(Date value) {
            addCriterion("pdate <", value, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateLessThanOrEqualTo(Date value) {
            addCriterion("pdate <=", value, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateIn(List<Date> values) {
            addCriterion("pdate in", values, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateNotIn(List<Date> values) {
            addCriterion("pdate not in", values, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateBetween(Date value1, Date value2) {
            addCriterion("pdate between", value1, value2, "pdate");
            return (Criteria) this;
        }

        public Criteria andPdateNotBetween(Date value1, Date value2) {
            addCriterion("pdate not between", value1, value2, "pdate");
            return (Criteria) this;
        }

        public Criteria andPcommentsIsNull() {
            addCriterion("pcomments is null");
            return (Criteria) this;
        }

        public Criteria andPcommentsIsNotNull() {
            addCriterion("pcomments is not null");
            return (Criteria) this;
        }

        public Criteria andPcommentsEqualTo(Integer value) {
            addCriterion("pcomments =", value, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsNotEqualTo(Integer value) {
            addCriterion("pcomments <>", value, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsGreaterThan(Integer value) {
            addCriterion("pcomments >", value, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsGreaterThanOrEqualTo(Integer value) {
            addCriterion("pcomments >=", value, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsLessThan(Integer value) {
            addCriterion("pcomments <", value, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsLessThanOrEqualTo(Integer value) {
            addCriterion("pcomments <=", value, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsIn(List<Integer> values) {
            addCriterion("pcomments in", values, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsNotIn(List<Integer> values) {
            addCriterion("pcomments not in", values, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsBetween(Integer value1, Integer value2) {
            addCriterion("pcomments between", value1, value2, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPcommentsNotBetween(Integer value1, Integer value2) {
            addCriterion("pcomments not between", value1, value2, "pcomments");
            return (Criteria) this;
        }

        public Criteria andPreadingsIsNull() {
            addCriterion("preadings is null");
            return (Criteria) this;
        }

        public Criteria andPreadingsIsNotNull() {
            addCriterion("preadings is not null");
            return (Criteria) this;
        }

        public Criteria andPreadingsEqualTo(Integer value) {
            addCriterion("preadings =", value, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsNotEqualTo(Integer value) {
            addCriterion("preadings <>", value, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsGreaterThan(Integer value) {
            addCriterion("preadings >", value, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsGreaterThanOrEqualTo(Integer value) {
            addCriterion("preadings >=", value, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsLessThan(Integer value) {
            addCriterion("preadings <", value, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsLessThanOrEqualTo(Integer value) {
            addCriterion("preadings <=", value, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsIn(List<Integer> values) {
            addCriterion("preadings in", values, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsNotIn(List<Integer> values) {
            addCriterion("preadings not in", values, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsBetween(Integer value1, Integer value2) {
            addCriterion("preadings between", value1, value2, "preadings");
            return (Criteria) this;
        }

        public Criteria andPreadingsNotBetween(Integer value1, Integer value2) {
            addCriterion("preadings not between", value1, value2, "preadings");
            return (Criteria) this;
        }

        public Criteria andPstatusIsNull() {
            addCriterion("pstatus is null");
            return (Criteria) this;
        }

        public Criteria andPstatusIsNotNull() {
            addCriterion("pstatus is not null");
            return (Criteria) this;
        }

        public Criteria andPstatusEqualTo(Integer value) {
            addCriterion("pstatus =", value, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusNotEqualTo(Integer value) {
            addCriterion("pstatus <>", value, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusGreaterThan(Integer value) {
            addCriterion("pstatus >", value, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("pstatus >=", value, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusLessThan(Integer value) {
            addCriterion("pstatus <", value, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusLessThanOrEqualTo(Integer value) {
            addCriterion("pstatus <=", value, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusIn(List<Integer> values) {
            addCriterion("pstatus in", values, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusNotIn(List<Integer> values) {
            addCriterion("pstatus not in", values, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusBetween(Integer value1, Integer value2) {
            addCriterion("pstatus between", value1, value2, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPstatusNotBetween(Integer value1, Integer value2) {
            addCriterion("pstatus not between", value1, value2, "pstatus");
            return (Criteria) this;
        }

        public Criteria andPlikeIsNull() {
            addCriterion("plike is null");
            return (Criteria) this;
        }

        public Criteria andPlikeIsNotNull() {
            addCriterion("plike is not null");
            return (Criteria) this;
        }

        public Criteria andPlikeEqualTo(Integer value) {
            addCriterion("plike =", value, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeNotEqualTo(Integer value) {
            addCriterion("plike <>", value, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeGreaterThan(Integer value) {
            addCriterion("plike >", value, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeGreaterThanOrEqualTo(Integer value) {
            addCriterion("plike >=", value, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeLessThan(Integer value) {
            addCriterion("plike <", value, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeLessThanOrEqualTo(Integer value) {
            addCriterion("plike <=", value, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeIn(List<Integer> values) {
            addCriterion("plike in", values, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeNotIn(List<Integer> values) {
            addCriterion("plike not in", values, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeBetween(Integer value1, Integer value2) {
            addCriterion("plike between", value1, value2, "plike");
            return (Criteria) this;
        }

        public Criteria andPlikeNotBetween(Integer value1, Integer value2) {
            addCriterion("plike not between", value1, value2, "plike");
            return (Criteria) this;
        }

        public Criteria andPprivateIsNull() {
            addCriterion("pprivate is null");
            return (Criteria) this;
        }

        public Criteria andPprivateIsNotNull() {
            addCriterion("pprivate is not null");
            return (Criteria) this;
        }

        public Criteria andPprivateEqualTo(Integer value) {
            addCriterion("pprivate =", value, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateNotEqualTo(Integer value) {
            addCriterion("pprivate <>", value, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateGreaterThan(Integer value) {
            addCriterion("pprivate >", value, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateGreaterThanOrEqualTo(Integer value) {
            addCriterion("pprivate >=", value, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateLessThan(Integer value) {
            addCriterion("pprivate <", value, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateLessThanOrEqualTo(Integer value) {
            addCriterion("pprivate <=", value, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateIn(List<Integer> values) {
            addCriterion("pprivate in", values, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateNotIn(List<Integer> values) {
            addCriterion("pprivate not in", values, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateBetween(Integer value1, Integer value2) {
            addCriterion("pprivate between", value1, value2, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPprivateNotBetween(Integer value1, Integer value2) {
            addCriterion("pprivate not between", value1, value2, "pprivate");
            return (Criteria) this;
        }

        public Criteria andPauditIsNull() {
            addCriterion("paudit is null");
            return (Criteria) this;
        }

        public Criteria andPauditIsNotNull() {
            addCriterion("paudit is not null");
            return (Criteria) this;
        }

        public Criteria andPauditEqualTo(Integer value) {
            addCriterion("paudit =", value, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditNotEqualTo(Integer value) {
            addCriterion("paudit <>", value, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditGreaterThan(Integer value) {
            addCriterion("paudit >", value, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditGreaterThanOrEqualTo(Integer value) {
            addCriterion("paudit >=", value, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditLessThan(Integer value) {
            addCriterion("paudit <", value, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditLessThanOrEqualTo(Integer value) {
            addCriterion("paudit <=", value, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditIn(List<Integer> values) {
            addCriterion("paudit in", values, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditNotIn(List<Integer> values) {
            addCriterion("paudit not in", values, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditBetween(Integer value1, Integer value2) {
            addCriterion("paudit between", value1, value2, "paudit");
            return (Criteria) this;
        }

        public Criteria andPauditNotBetween(Integer value1, Integer value2) {
            addCriterion("paudit not between", value1, value2, "paudit");
            return (Criteria) this;
        }

        public Criteria andPeliteIsNull() {
            addCriterion("pelite is null");
            return (Criteria) this;
        }

        public Criteria andPeliteIsNotNull() {
            addCriterion("pelite is not null");
            return (Criteria) this;
        }

        public Criteria andPeliteEqualTo(Integer value) {
            addCriterion("pelite =", value, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteNotEqualTo(Integer value) {
            addCriterion("pelite <>", value, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteGreaterThan(Integer value) {
            addCriterion("pelite >", value, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteGreaterThanOrEqualTo(Integer value) {
            addCriterion("pelite >=", value, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteLessThan(Integer value) {
            addCriterion("pelite <", value, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteLessThanOrEqualTo(Integer value) {
            addCriterion("pelite <=", value, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteIn(List<Integer> values) {
            addCriterion("pelite in", values, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteNotIn(List<Integer> values) {
            addCriterion("pelite not in", values, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteBetween(Integer value1, Integer value2) {
            addCriterion("pelite between", value1, value2, "pelite");
            return (Criteria) this;
        }

        public Criteria andPeliteNotBetween(Integer value1, Integer value2) {
            addCriterion("pelite not between", value1, value2, "pelite");
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