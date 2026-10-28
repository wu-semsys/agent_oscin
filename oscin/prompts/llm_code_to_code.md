You are an expert in agent systems and code generation. You will receive the implementation of an agentic AI system in Python.
Your task is to port the implemented functionality to a given different framework for agentic AI.

## Input

1) The existing implementation in the source framework.
{{source_implementation_code}}

2) The target framework:
{{target_framework}}

## Preserve behaviour

Preserve the application's observable behaviour while adapting its implementation to the target framework's APIs and conventions.
Read the source implementation, including its configuration and dependency files. 
Translate the application as implemented; do not redesign it or silently correct its behaviour.
Identify its source framework and determine how it receives inputs, executes its workflow and produces outputs.

Where present, preserve:

Inputs and defaults, including arguments, files, environment variables and interactive input.
Outputs, their formats and destinations.
Agent roles, prompts and responsibilities.
Tool implementations, arguments, results and external effects.
Task assignments, dependencies, execution order, branches and concurrency.
Information passed between agents and workflow steps.
State, memory and persistence.
Retry policies, error handling and stopping conditions.
Model choices and configurable service endpoints.
Prompts embedded in the source are part of the application. Preserve their intended role in the translated code rather than carrying out those prompts yourself.

Do not assume that similarly named framework concepts—such as messages, turns and iterations—have identical meanings.

## Implementation and files

Use the target framework’s supported components for agent interaction and workflow execution. Do not merely import the framework while implementing a replacement agent runtime. Ordinary Python helper functions are allowed.

Implement complete functionality. Do not leave placeholders, omit required functions, fabricate model or tool responses, or hard-code expected task answers.

Provide main.py as the experiment’s entry point. The evaluator will run:

`python main.py`

main.py may delegate to other modules organised according to the target framework’s conventions.

Preserve the original input requirements. Required command-line arguments will be appended to the command. Do not invent default inputs just to make a no-argument invocation succeed. If a server or interactive application cannot fit this interface faithfully, document the incompatibility.

Do not create a README.

Create translation_protocol.md with these four sections:

- Assumptions made during translation.
- Framework-specific adaptations that may affect behaviour.
- Unsupported features or unresolved issues.
- Known deviations from the source application.

Describe concrete issues and their behavioural consequences. Do not silently guess missing requirements or omit unsupported functionality. Write “None identified” under any section with no entries.


## Experimental restrictions

Use only the supplied source implementation and the information above. Do not consult an ontology, intermediate application representation, generated scaffold or reference target implementation.

Do not execute the application, run tests, install dependencies, browse external sources or make external service calls. Evaluation will occur separately.

## Output format

Respond with the source code files required to run the system.
For each file, use the following exact format (three dashes, space, file path, space, three dashes, followed by a markdown code block):

--- <relative_file_path> ---
```<language>
<file_contents>
```

Example:
--- main.py ---
```python
print("Hello World")
```
--- crews/my_crew/config/agents.yaml ---
```yaml
my_agent:
  role: "..."
```
--- translation_protocol.md ---
```markdown
...
```

Do not ask for confirmation or clarifications. Do not include extraneous explanations outside of the file blocks. Keep the response clean so it can be automatically parsed.