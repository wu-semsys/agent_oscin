# same framework - crewai 

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/code_review \
    --reference-source examples/parallel/code-review/crewai/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/joke \
    --reference-source examples/parallel/joke/crewai/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/maths \
    --reference-source examples/parallel/maths/crewai/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/crewai/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/tech_blog \
    --reference-source examples/parallel/tech-blog/crewai/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/travel_planning \
    --reference-source examples/parallel/travel-planning/crewai/source_files

cat output/generation/crewai/code_review/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/crewai/joke/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/crewai/maths/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/crewai/meeting_assistant/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/crewai/tech_blog/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/crewai/travel_planning/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/code_review \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/joke \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/maths \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/meeting_assistant \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/tech_blog \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/crewai/travel_planning \
    --execute

# same framework - autogen 

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/code_review \
    --reference-source examples/parallel/code-review/autogen/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/joke \
    --reference-source examples/parallel/joke/autogen/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/maths \
    --reference-source examples/parallel/maths/autogen/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/autogen/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/tech_blog \
    --reference-source examples/parallel/tech-blog/autogen/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/travel_planning \
    --reference-source examples/parallel/travel-planning/autogen/source_files

cat output/generation/autogen/code_review/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/autogen/joke/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/autogen/maths/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/autogen/meeting_assistant/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/autogen/tech_blog/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/autogen/travel_planning/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'



python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/code_review \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/joke \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/maths \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/meeting_assistant \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/tech_blog \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/autogen/travel_planning \
    --execute

# same framework - langgraph

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/code_review \
    --reference-source examples/parallel/code-review/langgraph/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/joke \
    --reference-source examples/parallel/joke/langgraph/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/maths \
    --reference-source examples/parallel/maths/langgraph/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/langgraph/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/tech_blog \
    --reference-source examples/parallel/tech-blog/langgraph/source_files
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/travel_planning \
    --reference-source examples/parallel/travel-planning/langgraph/source_files

cat output/generation/langgraph/code_review/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/langgraph/joke/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/langgraph/maths/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/langgraph/meeting_assistant/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/langgraph/tech_blog/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/langgraph/travel_planning/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/code_review \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/joke \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/maths \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/meeting_assistant \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/tech_blog \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/langgraph/travel_planning \
    --execute

# cross-framework crewai -> autogen

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/crewai/autogen/code_review \
    --reference-source examples/parallel/code-review/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/crewai/autogen/joke \
    --reference-source examples/parallel/joke/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/crewai/autogen/maths \
    --reference-source examples/parallel/maths/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/crewai/autogen/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/crewai/autogen/tech_blog \
    --reference-source examples/parallel/tech-blog/autogen/source_files \
    --execute        
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/crewai/autogen/travel_planning \
    --reference-source examples/parallel/travel-planning/autogen/source_files \
    --execute    

cat output/generation/cross/crewai/autogen/code_review/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/autogen/joke/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/autogen/maths/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/autogen/meeting_assistant/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/autogen/tech_blog/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/autogen/travel_planning/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

# cross-framework crewai -> langgraph

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/crewai/langgraph/code_review \
    --reference-source examples/parallel/code-review/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/crewai/langgraph/joke \
    --reference-source examples/parallel/joke/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/crewai/langgraph/maths \
    --reference-source examples/parallel/maths/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/crewai/langgraph/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/crewai/langgraph/tech_blog \
    --reference-source examples/parallel/tech-blog/langgraph/source_files \
    --execute        
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/crewai/langgraph/travel_planning \
    --reference-source examples/parallel/travel-planning/langgraph/source_files \
    --execute    


cat output/generation/cross/crewai/langgraph/code_review/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/langgraph/joke/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/langgraph/maths/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/langgraph/meeting_assistant/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/langgraph/tech_blog/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/crewai/langgraph/travel_planning/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

# cross-framework autogen -> crewai

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/autogen/crewai/code_review \
    --reference-source examples/parallel/code-review/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/autogen/crewai/joke \
    --reference-source examples/parallel/joke/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/autogen/crewai/maths \
    --reference-source examples/parallel/maths/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/autogen/crewai/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/autogen/crewai/tech_blog \
    --reference-source examples/parallel/tech-blog/crewai/source_files \
    --execute        
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/autogen/crewai/travel_planning \
    --reference-source examples/parallel/travel-planning/crewai/source_files \
    --execute    


cat output/generation/cross/autogen/crewai/code_review/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/crewai/joke/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/crewai/maths/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/crewai/meeting_assistant/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/crewai/tech_blog/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/crewai/travel_planning/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

# cross-framework autogen -> langgraph

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/autogen/langgraph/code_review \
    --reference-source examples/parallel/code-review/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/autogen/langgraph/joke \
    --reference-source examples/parallel/joke/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/autogen/langgraph/maths \
    --reference-source examples/parallel/maths/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/autogen/langgraph/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/langgraph/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/autogen/langgraph/tech_blog \
    --reference-source examples/parallel/tech-blog/langgraph/source_files \
    --execute        
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/generation/cross/autogen/langgraph/travel_planning \
    --reference-source examples/parallel/travel-planning/langgraph/source_files \
    --execute    


cat output/generation/cross/autogen/langgraph/code_review/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/langgraph/joke/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/langgraph/maths/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/langgraph/meeting_assistant/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/langgraph/tech_blog/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/autogen/langgraph/travel_planning/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

# cross-framework langgraph -> autogen

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/langgraph/autogen/code_review \
    --reference-source examples/parallel/code-review/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/langgraph/autogen/joke \
    --reference-source examples/parallel/joke/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/langgraph/autogen/maths \
    --reference-source examples/parallel/maths/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/langgraph/autogen/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/autogen/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/langgraph/autogen/tech_blog \
    --reference-source examples/parallel/tech-blog/autogen/source_files \
    --execute        
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/generation/cross/langgraph/autogen/travel_planning \
    --reference-source examples/parallel/travel-planning/autogen/source_files \
    --execute    


cat output/generation/cross/langgraph/autogen/code_review/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/autogen/joke/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/autogen/maths/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/autogen/meeting_assistant/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/autogen/tech_blog/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/autogen/travel_planning/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'

# cross-framework langgraph -> crewai

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/langgraph/crewai/code_review \
    --reference-source examples/parallel/code-review/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/langgraph/crewai/joke \
    --reference-source examples/parallel/joke/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/langgraph/crewai/maths \
    --reference-source examples/parallel/maths/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/langgraph/crewai/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/crewai/source_files \
    --execute
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/langgraph/crewai/tech_blog \
    --reference-source examples/parallel/tech-blog/crewai/source_files \
    --execute        
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/generation/cross/langgraph/crewai/travel_planning \
    --reference-source examples/parallel/travel-planning/crewai/source_files \
    --execute    

cat output/generation/cross/langgraph/crewai/code_review/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/crewai/joke/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/crewai/maths/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/crewai/meeting_assistant/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/crewai/tech_blog/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
cat output/generation/cross/langgraph/crewai/travel_planning/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1)"'
