/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jsp.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.swing.DefaultListModel;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author ANDRES
 */
public class UtilidadesUsuarios {
    public ArrayList<Usuarios> getUsuarios(){
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        ArrayList<Usuarios> arreglo = new ArrayList<Usuarios>();
        Query q = session.createQuery("from Usuarios");
        List<Usuarios> lista = q.list();
        Iterator<Usuarios> it = lista.iterator();
        tx.commit();
        session.close();
        DefaultListModel dl = new DefaultListModel();
        while(it.hasNext()){
            Usuarios noti = (Usuarios) it.next();
            arreglo.add(noti);
        }
        
        return arreglo;
    }
    
    public Usuarios getUsuarioId(int id){
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        Usuarios usr = (Usuarios)session.get(Usuarios.class, id);
        tx.commit();
        session.close();
        return usr;
    }
    
    public void updateUsuario(Usuarios usr){
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        //Usuarios usr = (Usuarios)session.get(Usuarios.class, id);
        session.update(usr);
        tx.commit();
        session.close();
    }
    
    public void deleteUsuario(int id){
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        Usuarios usr = (Usuarios)session.get(Usuarios.class, id);
        session.delete(usr);
        tx.commit();
        session.close();
    }
    
    public void addUsuario(Usuarios user){
        SessionFactory sesion = HibernateUtil.getSessionFactory();
        Session session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }
    
    
}
