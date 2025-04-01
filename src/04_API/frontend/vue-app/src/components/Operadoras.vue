<template>
  <div>
    <h1>Buscar Operadoras</h1>
    <input v-model="termo" placeholder="Digite um nome..." />
    <button @click="buscarOperadoras">Buscar</button>
    <ul>
      <li v-for="operadora in operadoras" :key="operadora.Registro_ANS">
        {{ operadora.Nome_Fantasia || operadora.Razao_Social }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      termo: "",
      operadoras: [],
    };
  },
  methods: {
    async buscarOperadoras() {
      const response = await axios.get(`http://127.0.0.1:8000/operadoras/`, {
        params: { termo: this.termo },
      });
      this.operadoras = response.data;
    },
  },
};
</script>

<style scoped>
input {
  margin-right: 10px;
}
</style>