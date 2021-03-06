package br.com.casadocodigo.loja.dao;

import br.com.casadocodigo.loja.model.Produto;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
@Transactional
public class ProdutoDao {

    @PersistenceContext
    private EntityManager manager;

    public void gravar(Produto produto){
        manager.persist(produto);
    }

    public List<Produto> listar() {
        return manager.createQuery("from Produto p", Produto.class).getResultList();
    }
}
