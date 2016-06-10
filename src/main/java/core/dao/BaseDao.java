package core.dao;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;

import java.util.List;

public interface BaseDao<T>  {
    void create(T entity);

    void update(T entity);

    void delete(T entity);

    T get(int id);

    T findById(int id);

    List<T> list();

    Query createQuery(String query);

    void refresh(T entity);

    Criteria getCriteria();

    List<T> findByName(String name);

    SQLQuery createSqlQuery(String sql);
}
