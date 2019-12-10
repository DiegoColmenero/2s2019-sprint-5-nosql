using MongoDB.Bson.Serialization.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Domains
{
    public class LocaisLancamentos
    {
        [BsonId]
        [BsonRepresentation(MongoDB.Bson.BsonType.ObjectId)]
        public string Id { get; set; }

        [BsonRequired]
        public string nome { get; set;}

        [BsonRequired]
        public string pais { get; set; }

        [BsonRequired]
        public string latitude { get; set; }

        [BsonRequired]
        public string longitude { get; set; }
    }
}
