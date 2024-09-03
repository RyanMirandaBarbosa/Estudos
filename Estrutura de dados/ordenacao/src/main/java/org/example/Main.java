package org.example;

import java.util.Arrays;

public class Main {

    public static int[] selectionSort(int[] lista){
        int aux;
        for (int i = 0; i < lista.length -1; i++) {
            for (int j = i+1; j < lista.length; j++) {
                if (lista[j] < lista[i]){
                    aux = lista[i];
                    lista[i] = lista[j];
                    lista[j] = aux;
                }
            }
        }
        return lista;
    }

    public static int[] selectionSortOtimizado(int[] lista){
        int aux;
        for (int i = 0; i < lista.length -1; i++) {
            int indiceMenor = i;
            for (int j = i+1; j < lista.length; j++) {
                if (lista[j] < lista[indiceMenor]){
                    indiceMenor = j;
                }
            }
            aux = lista[i];
            lista[i] = lista[indiceMenor];
            lista[indiceMenor] = aux;
        }
        return lista;
    }

    public static int[] bublleSort(int[] lista){
        int aux;

        for (int i = 0; i < lista.length - 1; i++) {

            for (int j = 1; j < lista.length - i; j++) {

                if (lista[j-1] > lista[j]){

                    aux = lista[j-1];
                    lista[j-1] = lista[j];
                    lista[j] = aux;
                }
            }
        }
        return lista;
    }

    public static int[] insertionSort(int[] lista){
        int aux;

        for (int i = 0; i < lista.length; i++) {
            aux = lista[i];
            int j = i - 1;

            while (j >= 0 && lista[j] > aux){
                lista[j + 1] = lista[j];
                j = j - 1;
            }
                lista[j + 1] = aux;
        }
        return lista;
    }

    public static int pesquisaBinaria(int[] lista, int aux){
        int inicio = 0;
        int fim = lista.length - 1;

        while (inicio <= fim){
            int meio = inicio + (fim - inicio) / 2;

            if (lista[meio] == aux) {
                return meio;
            }

            if (lista[meio] < aux) {
                inicio = meio + 1;
            } else {
                fim = meio - 1;
            }
        }
        return -1;
    }

    public static void main(String[] args) {

        int[] lista = {9, 5, 1, 3, 4, 8, 6, 2, 7};
        int aux = 1;

        lista = insertionSort(lista);

        System.out.println(Arrays.toString(lista));

        int resultado = pesquisaBinaria(lista, aux);

        if (resultado == -1) {
            System.out.println("Elemento não encontrado");
        } else {
            System.out.println("Elemento encontrado no índice: " + resultado);
        }


    }
}