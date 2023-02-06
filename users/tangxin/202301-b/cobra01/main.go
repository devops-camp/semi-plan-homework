package main

import (
	"fmt"
	"log"

	"github.com/spf13/cobra"
)

func main() {
	err := Execute()
	if err != nil {
		log.Fatal(err)
	}
}

var root = &cobra.Command{
	Use:   "greeting",
	Short: "打招呼",
	Run: func(cmd *cobra.Command, args []string) {
		greeting(name, age)
	},
}

var (
	name = ""
	age  = 0
)

func init() {
	root.Flags().StringVarP(&name, "name", "", "", "姓名")
	root.Flags().IntVarP(&age, "age", "", 20, "年龄")
}

func greeting(name string, age int) {
	fmt.Printf("%s 你好， 今年 %d 岁\n", name, age)
}

func Execute() error {
	return root.Execute()
}
