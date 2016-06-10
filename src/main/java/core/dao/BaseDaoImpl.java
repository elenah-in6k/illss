package core.dao;

import core.entity.Illness;
import org.hibernate.*;

import java.lang.reflect.ParameterizedType;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
@Transactional
public class BaseDaoImpl<T> implements BaseDao<T> {
    private final Class<T> persistentClass;

    @Autowired
    protected SessionFactory sessionFactory;

    protected BaseDaoImpl() {
        Class<T> clazz;
        try {
            clazz = getClassType();
        } catch (Exception e) {
            clazz = null;
        }
        this.persistentClass = clazz;
    }

    @SuppressWarnings("unchecked")
    private Class<T> getClassType() {
        return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    public void create(T entity) {
        getSession().save(entity);
    }

    public void update(T entity) {
        getSession().update(entity);
    }

    public void delete(T entity) {
        getSession().delete(entity);
    }

    @SuppressWarnings("unchecked")
    public T get(int id) {
        return (T) getSession().get(persistentClass, id);
    }

    public T findById(int id) {
        return get(id);
    }

    @SuppressWarnings("unchecked")
    public List<T> list() {
        getSession().clear();
        return getCriteria().list();
    }

    public Criteria getCriteria() {
        return getSession().createCriteria(persistentClass);
    }

    public Query createQuery(String query) {
        return getSession().createQuery(query);
    }

    public void refresh(T entity) {
        getSession().refresh(entity);
    }

    public List<T> findByName(String name) {
        return getCriteria().add(Restrictions.like("name", "%"+name+"%")).list();
    }

    public SQLQuery createSqlQuery(String sql) {
        return getSession().createSQLQuery(sql);
    }

    private Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
}
