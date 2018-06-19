﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjetoMecanicoVirtual.Models;
using System.Data.SqlClient;

namespace ProjetoMecanicoVirtual.DAO
{
    public class FuncionarioDAO
    {
        public void InsereFuncionario(Funcionario funcionario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("Insert into Funcionario (Nome, Email,Usuario, Senha, Tipo_User,ativo) values (@nome,@email,@usuario, @senha, @tipo_user, @ativo)"))
                {
                    cmd.Parameters.AddWithValue("@nome", funcionario.Nome);
                    cmd.Parameters.AddWithValue("@email", funcionario.Email);
                    cmd.Parameters.AddWithValue("@usuario",funcionario.Usuario);
                    cmd.Parameters.AddWithValue("@tipo_user",funcionario.TipoAcesso);
                    cmd.Parameters.AddWithValue("@senha",funcionario.Senha);
                    cmd.Parameters.AddWithValue("@ativo",funcionario.Ativo);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void AlterarFuncionario(Funcionario funcionario)
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand(@"Update funcionario  set nome = @nome, Email = @email, Usuario = @usuario, Tipo_user = @tipo_user,
                        Senha = @senha, ativo = @ativo where id = @id "))
                {
                    cmd.Parameters.AddWithValue("@nome", funcionario.Nome);
                    cmd.Parameters.AddWithValue("@email", funcionario.Email);
                    cmd.Parameters.AddWithValue("@usuario", funcionario.Usuario);
                    cmd.Parameters.AddWithValue("@tipo_user", funcionario.TipoAcesso);
                    cmd.Parameters.AddWithValue("@senha", funcionario.Senha);
                    cmd.Parameters.AddWithValue("@ativo", funcionario.Ativo);
                    cmd.ExecuteNonQuery();
                }
            }

        }

        public static List<Funcionario> ListarFuncionario()
        {
            using (SqlConnection conn = Conexao.AbrirConexao())
            {
                using (SqlCommand cmd = new SqlCommand("select id_func, usuario, tipo_user, nome, ativo from funcionario", conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Funcionario> lista = new List<Funcionario>();

                        while (reader.Read() == true)
                        {
                            lista.Add(new Funcionario()
                            {
                                Id = reader.GetInt32(0),
                                Usuario = reader.GetString(1),
                                TipoAcesso = reader.GetString(2),
                                Nome = reader.GetString(3),
                                Ativo = reader.GetBoolean(4)
                            });
                        }
                        return lista;
                    }
                }
            }
        }
    }
}