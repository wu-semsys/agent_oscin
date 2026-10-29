# Note: needs the output produced by generation_determinstic.sh

# crewai -> autogen

oscin llm_fixup \
    --ttl_file examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/crewai/autogen/code_review \
    --output-dir output/llm_fixup/cross/crewai/autogen/code_review \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/code-review/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/crewai/autogen/joke \
    --output-dir output/llm_fixup/cross/crewai/autogen/joke \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/joke/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/crewai/autogen/maths \
    --output-dir output/llm_fixup/cross/crewai/autogen/maths \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/maths/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/crewai/autogen/meeting_assistant \
    --output-dir output/llm_fixup/cross/crewai/autogen/meeting_assistant \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/meeting-assistant-flow/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/crewai/autogen/tech_blog \
    --output-dir output/llm_fixup/cross/crewai/autogen/tech_blog \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/tech-blog/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/crewai/autogen/travel_planning \
    --output-dir output/llm_fixup/cross/crewai/autogen/travel_planning \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/travel-planning/crewai/source_files    

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/crewai/autogen/code_review \
    --reference-source examples/parallel/code-review/autogen/source_files \
    --existing-generation output/llm_fixup/cross/crewai/autogen/code_review \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/crewai/autogen/joke \
    --reference-source examples/parallel/joke/autogen/source_files \
    --existing-generation output/llm_fixup/cross/crewai/autogen/joke \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/crewai/autogen/maths \
    --reference-source examples/parallel/maths/autogen/source_files \
    --existing-generation output/llm_fixup/cross/crewai/autogen/maths \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/crewai/autogen/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/autogen/source_files \
    --existing-generation output/llm_fixup/cross/crewai/autogen/meeting_assistant \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/crewai/autogen/tech_blog \
    --reference-source examples/parallel/tech-blog/autogen/source_files \
    --existing-generation output/llm_fixup/cross/crewai/autogen/tech_blog \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/crewai/autogen/travel_planning \
    --reference-source examples/parallel/travel-planning/autogen/source_files \
    --existing-generation output/llm_fixup/cross/crewai/autogen/travel_planning \
    --reextract

cat output/llm_fixup_report/cross/crewai/autogen/code_review/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/autogen/joke/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/autogen/maths/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/autogen/meeting_assistant/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/autogen/tech_blog/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/autogen/travel_planning/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'

# crewai -> langgraph

oscin llm_fixup \
    --ttl_file examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/crewai/langgraph/code_review \
    --output-dir output/llm_fixup/cross/crewai/langgraph/code_review \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/code-review/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/crewai/langgraph/joke \
    --output-dir output/llm_fixup/cross/crewai/langgraph/joke \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/joke/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/crewai/langgraph/maths \
    --output-dir output/llm_fixup/cross/crewai/langgraph/maths \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/maths/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/crewai/langgraph/meeting_assistant \
    --output-dir output/llm_fixup/cross/crewai/langgraph/meeting_assistant \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/meeting-assistant-flow/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/crewai/langgraph/tech_blog \
    --output-dir output/llm_fixup/cross/crewai/langgraph/tech_blog \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/tech-blog/crewai/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/crewai/langgraph/travel_planning \
    --output-dir output/llm_fixup/cross/crewai/langgraph/travel_planning \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/travel-planning/crewai/source_files    

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/crewai/langgraph/code_review \
    --reference-source examples/parallel/code-review/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/crewai/langgraph/code_review \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/crewai/langgraph/joke \
    --reference-source examples/parallel/joke/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/crewai/langgraph/joke \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/crewai/langgraph/maths \
    --reference-source examples/parallel/maths/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/crewai/langgraph/maths \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/crewai/langgraph/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/crewai/langgraph/meeting_assistant \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/crewai/langgraph/tech_blog \
    --reference-source examples/parallel/tech-blog/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/crewai/langgraph/tech_blog \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/crewai/langgraph/travel_planning \
    --reference-source examples/parallel/travel-planning/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/crewai/langgraph/travel_planning \
    --reextract

cat output/llm_fixup_report/cross/crewai/langgraph/code_review/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/langgraph/joke/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/langgraph/maths/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/langgraph/meeting_assistant/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/langgraph/tech_blog/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/crewai/langgraph/travel_planning/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'

# autogen -> crewai

oscin llm_fixup \
    --ttl_file examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/autogen/crewai/code_review \
    --output-dir output/llm_fixup/cross/autogen/crewai/code_review \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/code-review/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/autogen/crewai/joke \
    --output-dir output/llm_fixup/cross/autogen/crewai/joke \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/joke/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/autogen/crewai/maths \
    --output-dir output/llm_fixup/cross/autogen/crewai/maths \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/maths/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/autogen/crewai/meeting_assistant \
    --output-dir output/llm_fixup/cross/autogen/crewai/meeting_assistant \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/meeting-assistant-flow/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/autogen/crewai/tech_blog \
    --output-dir output/llm_fixup/cross/autogen/crewai/tech_blog \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/tech-blog/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/autogen/crewai/travel_planning \
    --output-dir output/llm_fixup/cross/autogen/crewai/travel_planning \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/travel-planning/autogen/source_files    

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/autogen/crewai/code_review \
    --reference-source examples/parallel/code-review/crewai/source_files \
    --existing-generation output/llm_fixup/cross/autogen/crewai/code_review \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/autogen/crewai/joke \
    --reference-source examples/parallel/joke/crewai/source_files \
    --existing-generation output/llm_fixup/cross/autogen/crewai/joke \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/autogen/crewai/maths \
    --reference-source examples/parallel/maths/crewai/source_files \
    --existing-generation output/llm_fixup/cross/autogen/crewai/maths \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/autogen/crewai/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/crewai/source_files \
    --existing-generation output/llm_fixup/cross/autogen/crewai/meeting_assistant \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/autogen/crewai/tech_blog \
    --reference-source examples/parallel/tech-blog/crewai/source_files \
    --existing-generation output/llm_fixup/cross/autogen/crewai/tech_blog \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/autogen/crewai/travel_planning \
    --reference-source examples/parallel/travel-planning/crewai/source_files \
    --existing-generation output/llm_fixup/cross/autogen/crewai/travel_planning \
    --reextract

cat output/llm_fixup_report/cross/autogen/crewai/code_review/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/crewai/joke/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/crewai/maths/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/crewai/meeting_assistant/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/crewai/tech_blog/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/crewai/travel_planning/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'

# autogen -> langgraph

oscin llm_fixup \
    --ttl_file examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/autogen/langgraph/code_review \
    --output-dir output/llm_fixup/cross/autogen/langgraph/code_review \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/code-review/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/autogen/langgraph/joke \
    --output-dir output/llm_fixup/cross/autogen/langgraph/joke \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/joke/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/autogen/langgraph/maths \
    --output-dir output/llm_fixup/cross/autogen/langgraph/maths \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/maths/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/autogen/langgraph/meeting_assistant \
    --output-dir output/llm_fixup/cross/autogen/langgraph/meeting_assistant \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/meeting-assistant-flow/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/autogen/langgraph/tech_blog \
    --output-dir output/llm_fixup/cross/autogen/langgraph/tech_blog \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/tech-blog/autogen/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework langgraph \
    --generated-dir output/generation/cross/autogen/langgraph/travel_planning \
    --output-dir output/llm_fixup/cross/autogen/langgraph/travel_planning \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/travel-planning/autogen/source_files    

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/autogen/langgraph/code_review \
    --reference-source examples/parallel/code-review/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/autogen/langgraph/code_review \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/autogen/langgraph/joke \
    --reference-source examples/parallel/joke/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/autogen/langgraph/joke \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/autogen/langgraph/maths \
    --reference-source examples/parallel/maths/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/autogen/langgraph/maths \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/autogen/langgraph/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/autogen/langgraph/meeting_assistant \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/autogen/langgraph/tech_blog \
    --reference-source examples/parallel/tech-blog/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/autogen/langgraph/tech_blog \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework langgraph \
    --out-root output/llm_fixup_report/cross/autogen/langgraph/travel_planning \
    --reference-source examples/parallel/travel-planning/langgraph/source_files \
    --existing-generation output/llm_fixup/cross/autogen/langgraph/travel_planning \
    --reextract

cat output/llm_fixup_report/cross/autogen/langgraph/code_review/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/langgraph/joke/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/langgraph/maths/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/langgraph/meeting_assistant/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/langgraph/tech_blog/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/autogen/langgraph/travel_planning/langgraph/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'

# langgraph -> autogen

oscin llm_fixup \
    --ttl_file examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/langgraph/autogen/code_review \
    --output-dir output/llm_fixup/cross/langgraph/autogen/code_review \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/code-review/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/langgraph/autogen/joke \
    --output-dir output/llm_fixup/cross/langgraph/autogen/joke \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/joke/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/langgraph/autogen/maths \
    --output-dir output/llm_fixup/cross/langgraph/autogen/maths \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/maths/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/langgraph/autogen/meeting_assistant \
    --output-dir output/llm_fixup/cross/langgraph/autogen/meeting_assistant \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/meeting-assistant-flow/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/langgraph/autogen/tech_blog \
    --output-dir output/llm_fixup/cross/langgraph/autogen/tech_blog \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/tech-blog/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework autogen \
    --generated-dir output/generation/cross/langgraph/autogen/travel_planning \
    --output-dir output/llm_fixup/cross/langgraph/autogen/travel_planning \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/travel-planning/langgraph/source_files    

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/langgraph/autogen/code_review \
    --reference-source examples/parallel/code-review/autogen/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/autogen/code_review \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/langgraph/autogen/joke \
    --reference-source examples/parallel/joke/autogen/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/autogen/joke \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/langgraph/autogen/maths \
    --reference-source examples/parallel/maths/autogen/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/autogen/maths \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/langgraph/autogen/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/autogen/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/autogen/meeting_assistant \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/langgraph/autogen/tech_blog \
    --reference-source examples/parallel/tech-blog/autogen/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/autogen/tech_blog \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/autogen/ground_truth.ttl \
    --target-framework autogen \
    --out-root output/llm_fixup_report/cross/langgraph/autogen/travel_planning \
    --reference-source examples/parallel/travel-planning/autogen/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/autogen/travel_planning \
    --reextract

cat output/llm_fixup_report/cross/langgraph/autogen/code_review/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/autogen/joke/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/autogen/maths/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/autogen/meeting_assistant/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/autogen/tech_blog/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/autogen/travel_planning/autogen/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'

# langgraph -> crewai

oscin llm_fixup \
    --ttl_file examples/parallel/code-review/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/langgraph/crewai/code_review \
    --output-dir output/llm_fixup/cross/langgraph/crewai/code_review \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/code-review/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/joke/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/langgraph/crewai/joke \
    --output-dir output/llm_fixup/cross/langgraph/crewai/joke \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/joke/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/maths/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/langgraph/crewai/maths \
    --output-dir output/llm_fixup/cross/langgraph/crewai/maths \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/maths/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/meeting-assistant-flow/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/langgraph/crewai/meeting_assistant \
    --output-dir output/llm_fixup/cross/langgraph/crewai/meeting_assistant \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/meeting-assistant-flow/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/tech-blog/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/langgraph/crewai/tech_blog \
    --output-dir output/llm_fixup/cross/langgraph/crewai/tech_blog \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/tech-blog/langgraph/source_files
oscin llm_fixup \
    --ttl_file examples/parallel/travel-planning/langgraph/ground_truth.ttl \
    --target-framework crewai \
    --generated-dir output/generation/cross/langgraph/crewai/travel_planning \
    --output-dir output/llm_fixup/cross/langgraph/crewai/travel_planning \
    --provider openai \
    --model gpt-6-astra \
    --source_framework_code_dir examples/parallel/travel-planning/langgraph/source_files    

python -m evaluation.pipelines.generation \
    --ttl examples/parallel/code-review/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/langgraph/crewai/code_review \
    --reference-source examples/parallel/code-review/crewai/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/crewai/code_review \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/joke/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/langgraph/crewai/joke \
    --reference-source examples/parallel/joke/crewai/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/crewai/joke \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/maths/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/langgraph/crewai/maths \
    --reference-source examples/parallel/maths/crewai/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/crewai/maths \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/meeting-assistant-flow/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/langgraph/crewai/meeting_assistant \
    --reference-source examples/parallel/meeting-assistant-flow/crewai/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/crewai/meeting_assistant \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/tech-blog/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/langgraph/crewai/tech_blog \
    --reference-source examples/parallel/tech-blog/crewai/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/crewai/tech_blog \
    --reextract
python -m evaluation.pipelines.generation \
    --ttl examples/parallel/travel-planning/crewai/ground_truth.ttl \
    --target-framework crewai \
    --out-root output/llm_fixup_report/cross/langgraph/crewai/travel_planning \
    --reference-source examples/parallel/travel-planning/crewai/source_files \
    --existing-generation output/llm_fixup/cross/langgraph/crewai/travel_planning \
    --reextract

cat output/llm_fixup_report/cross/langgraph/crewai/code_review/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/crewai/joke/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/crewai/maths/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/crewai/meeting_assistant/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/crewai/tech_blog/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
cat output/llm_fixup_report/cross/langgraph/crewai/travel_planning/crewai/ground_truth/report.json | jq '"\(.metrics.syntax_validity.syntax_rate),\(.metrics.ast_diff.overall.f1),\(.metrics.ttl_pairwise_aligned.individual_f1),\(.metrics.ttl_pairwise_aligned.property_f1),\(.metrics.ttl_pairwise_aligned.triple_f1),\(.metrics.ttl_pairwise_aligned.individual_precision),\(.metrics.ttl_pairwise_aligned.individual_recall)"'
