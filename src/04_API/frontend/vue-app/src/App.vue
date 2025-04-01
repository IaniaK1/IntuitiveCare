<template>
  <div>
    <h2>Buscar Operadoras</h2>
    <input v-model="consulta" placeholder="Digite sua busca" />
    <button @click="buscarOperadoras">Buscar</button>
    <table>
      <thead>
        <tr>
          <th>Registro ANS</th>
          <th>CNPJ</th>
          <th>Razão Social</th>
          <th>Nome Fantasia</th>
          <th>Modalidade</th>
          </tr>
      </thead>
      <tbody>
        <tr v-for="operadora in operadoras" :key="operadora.Registro_ANS">
          <td>{{ operadora.Registro_ANS }}</td>
          <td>{{ operadora.CNPJ }}</td>
          <td>{{ operadora.Razao_Social }}</td>
          <td>{{ operadora.Nome_Fantasia }}</td>
          <td>{{ operadora.Modalidade }}</td>
          </tr>
      </tbody>
    </table>

    <h2>Maiores Despesas</h2>
    <input type="date" v-model="dataInicial" />
    <input type="date" v-model="dataFinal" />
    <button @click="buscarDespesas">Buscar</button>
    <table>
      <thead>
        <tr>
          <th>Operadora</th>
          <th>Total Despesas</th>
          </tr>
      </thead>
      <tbody>
        <tr v-for="despesa in despesas" :key="despesa.Operadora">
          <td>{{ despesa.Operadora }}</td>
          <td>{{ despesa.Total_Despesas }}</td>
          </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      consulta: '',
      operadoras: [],
      dataInicial: '',
      dataFinal: '',
      despesas: [],
    };
  },
  methods: {
    buscarOperadoras() {
      axios
        .get(`http://localhost:8000/operadoras/?termo=${this.consulta}`)
        .then((resposta) => {
          this.operadoras = resposta.data;
        })
        .catch((erro) => {
          console.error('Erro na busca de operadoras:', erro);
        });
    },
    buscarDespesas() {
      axios
        .get(
          `http://localhost:8000/despesas/?data_inicial=${this.dataInicial}&data_final=${this.dataFinal}`
        )
        .then((resposta) => {
          this.despesas = resposta.data;
        })
        .catch((erro) => {
          console.error('Erro na busca de despesas:', erro);
        });
    },
  },
};
</script>