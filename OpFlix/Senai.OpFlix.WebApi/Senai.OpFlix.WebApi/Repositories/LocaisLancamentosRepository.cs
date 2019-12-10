using MongoDB.Driver;
using Senai.OpFlix.WebApi.Domains;
using Senai.OpFlix.WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Repositories
{
    public class LocaisLancamentosRepository : ILocaisLancamentosRepository
    {
        private readonly IMongoCollection<LocaisLancamentos> _locaisLancamentos;

        public LocaisLancamentosRepository()
        {
            var client = new MongoClient("mongodb://localhost:27017");
            var database = client.GetDatabase("M_OpFlix");
            _locaisLancamentos = database.GetCollection<LocaisLancamentos>("Lancamentos");
        }

        public List<LocaisLancamentos> Listar()
        {
            return _locaisLancamentos.Find(l => true).ToList();
        }
    }
}
