# statbus

This repository is to reproduce a bug in the Crystal compiler.

To build and see the bug run

``
shards build statbus
```

And that should produce this output
```
I: Dependencies are satisfied
I: Building: statbus
E: Error target statbus failed to compile:
BUG: trying to downcast (String | Nil) (Crystal::NilableType) <- String (Crystal::NonGenericClassType) (Exception)
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'raise<Exception>:NoReturn'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'raise<String>:NoReturn'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#downcast_distinct<LLVM::Value, Crystal::Type+, Crystal::Type+>:NoReturn'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#downcast:extern<LLVM::Value, Crystal::Type+, Crystal::Type+, Bool, Bool>:LLVM::Value'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Var+>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_assign<Crystal::ASTNode+, Crystal::ASTNode+, Crystal::Assign>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_cond<Crystal::ASTNode+>:LLVM::Value'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_cond<Crystal::ASTNode+>:LLVM::Value'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Yield>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::ExceptionHandler>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_fun<String, Crystal::Def+, Crystal::Type+, Bool, Crystal::CodeGenVisitor::ModuleInfo, Bool, Bool>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#target_def_fun<Crystal::Def+, Crystal::Type+>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Yield>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Yield>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::While>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Yield>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::ExceptionHandler>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Yield>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::ExceptionHandler>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_fun<String, Crystal::Def+, Crystal::Type+, Bool, Crystal::CodeGenVisitor::ModuleInfo, Bool, Bool>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#target_def_fun<Crystal::Def+, Crystal::Type+>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::If>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_fun<String, Crystal::Def+, Crystal::Type+, Bool, Crystal::CodeGenVisitor::ModuleInfo, Bool, Bool>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#target_def_fun<Crystal::Def+, Crystal::Type+>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::ExceptionHandler>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_fun<String, Crystal::Def+, Crystal::Type+, Bool, Crystal::CodeGenVisitor::ModuleInfo, Bool, Bool>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#target_def_fun<Crystal::Def+, Crystal::Type+>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#codegen_fun<String, Crystal::Def+, Crystal::Type+, Bool, Crystal::CodeGenVisitor::ModuleInfo, Bool, Bool>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#target_def_fun<Crystal::Def+, Crystal::Type+>:Crystal::LLVMTypedFunction'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Call>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::CodeGenVisitor#visit<Crystal::Expressions>:Bool'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::ASTNode+@Crystal::ASTNode#accept<Crystal::CodeGenVisitor>:Nil'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::Compiler#codegen<Crystal::Program, Crystal::ASTNode+, Array(Crystal::Compiler::Source), String>:Array(Crystal::Compiler::CompilationUnit)'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::Compiler#compile<Array(Crystal::Compiler::Source), String>:Crystal::Compiler::Result'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::Command#run:(Bool | Crystal::Repl::Value | Nil)'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in '__crystal_main'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'Crystal::main<Int32, Pointer(Pointer(UInt8))>:Int32'
  from /opt/homebrew/Cellar/crystal/1.15.0/bin/crystal in 'main'
Error: you've found a bug in the Crystal compiler. Please open an issue, including source code that will allow us to reproduce the bug: https://github.com/crystal-lang/crystal/issues

```


There is an attempt to create a minimal test case in `src/minimal_test_case.cr`,
however that has not been successful.

The diff to see the change that triggers the bug is
```
diff src/statbus.cr src/statbus-without-crystal-bug.cr
1611c1611
<             STDOUT.puts output if @debug && output && !output.empty?
---
>             STDOUT.puts output if @debug && !output.empty?
```
