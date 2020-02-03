require "json-schema"
require "httparty"
require "pry"

schema = { 
    type: "object", 
    required: ["estado_info", "cidade_info"], 
    properties: { 
        "bairro": {type: "string"},
        "cidade": {type: "string"},
        "logradouro": {type: "string"},
        "estado_info":{ 
            type: "object",
            properties: {
                "area_km2": {type: "string"},
                "codigo_ibge": {type: "string"},
                "nome": {type: "string"}
            }
        },
        "cep": {type: "string"},
        "cidade_info":{ 
            type: "object",
            properties: {
                "area_km2": {type: "string"},
                "codigo_ibge": {type: "string"}
            }
        },
        "estado": {type: "string"}
    }
}

RSpec.describe do
    context "Fetch postcode details" do
        it "should be OK" do
            expect(HTTParty.get("http://api.postmon.com.br/v1/cep/73381111").message).to match("OK")
        end

        it "should be 200" do
            expect(HTTParty.get("http://api.postmon.com.br/v1/cep/73381111").code).to match(200)
        end

        it "should validate the schema" do
            expect(JSON::Validator.validate(schema, HTTParty.get("http://api.postmon.com.br/v1/cep/73381111").body)).to be_truthy
        end

        it "should validate the fragment estado_info" do
            expect(JSON::Validator.validate(schema, HTTParty.get("http://api.postmon.com.br/v1/cep/73381111").body, fragment: "#/properties/estado_info")).to be_truthy
        end

        it "should validate the fragment cidade_info" do
            expect(JSON::Validator.validate(schema, HTTParty.get("http://api.postmon.com.br/v1/cep/73381111").body, fragment: "#/properties/cidade_info")).to be_truthy
        end
    end
end