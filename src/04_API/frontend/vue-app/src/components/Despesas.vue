<script setup>
import { ref } from "vue";

const dataInicial = ref("");
const dataFinal = ref("");
const despesas = ref([]);
const erro = ref(null);

const buscarDespesas = async () => {
  try {
    erro.value = null;
    const response = await fetch(
      `http://127.0.0.1:8000/despesas/?data_inicial=${dataInicial.value}&data_final=${dataFinal.value}`
    );
    if (!response.ok) throw new Error("Erro ao buscar despesas");
    despesas.value = await response.json();
  } catch (err) {
    erro.value = err.message;
  }
};
</script>

<template>
  <div class="container">
    <h2>Buscar Maiores Despesas</h2>
    <input v-model="dataInicial" type="date" placeholder="Data Inicial" />
    <input v-model="dataFinal" type="date" placeholder="Data Final" />
    <button @click="buscarDespesas">Buscar</button>

    <p v-if="erro" class="erro">{{ erro }}</p>

    <ul v-if="despesas.length">
      <li v-for="(despesa, index) in despesas" :key="index">
        {{ despesa.Operadora }} - R$ {{ despesa.Total_Despesas.toFixed(2) }}
      </li>
    </ul>
  </div>
</template>

<style scoped>
.container {
  max-width: 600px;
  margin: auto;
  text-align: center;
}
input, button {
  margin: 10px;
  padding: 8px;
}
.erro {
  color: red;
}
</style>