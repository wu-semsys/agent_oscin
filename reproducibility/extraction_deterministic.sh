# crewai - extract

oscin extract examples/parallel/joke/crewai/source_files     --framework crewai     --system-name joke --namespace "http://example.org/joke#"     --output output/det-extraction/crewai/joke.ttl
oscin extract examples/parallel/meeting-assistant-flow/crewai/source_files     --framework crewai     --system-name meeting_assistant_flow      --namespace "http://example.org/meeting_assistant_flow#"     --output output/det-extraction/crewai/meeting_assistant.ttl
oscin extract examples/parallel/travel-planning/crewai/source_files     --framework crewai     --system-name travel_planning      --namespace "http://example.org/travel_planning#"     --output output/det-extraction/crewai/travel_planning.ttl
oscin extract examples/parallel/maths/crewai/source_files     --framework crewai     --system-name maths --namespace "http://example.org/maths#"     --output output/det-extraction/crewai/maths.ttl
oscin extract examples/parallel/code-review/crewai/source_files     --framework crewai     --system-name code_review --namespace "http://example.org/code_review#"     --output output/det-extraction/crewai/code_review.ttl
oscin extract examples/parallel/tech-blog/crewai/source_files     --framework crewai     --system-name tech_blog --namespace "http://example.org/tech_blog#"     --output output/det-extraction/crewai/tech_blog.ttl

# crewai - evaluate

python -m evaluation.pipelines.extraction examples/parallel/joke/crewai/ -f crewai --existing-extraction output/det-extraction/crewai/joke.ttl  --out-root output/evaluation/det-generation/crewai/joke
python -m evaluation.pipelines.extraction examples/parallel/meeting-assistant-flow/crewai/ -f crewai --existing-extraction output/det-extraction/crewai/meeting_assistant.ttl  --out-root output/evaluation/det-generation/crewai/meeting_assistant
python -m evaluation.pipelines.extraction examples/parallel/travel-planning/crewai/ -f crewai --existing-extraction output/det-extraction/crewai/travel_planning.ttl  --out-root output/evaluation/det-generation/crewai/travel_planning
python -m evaluation.pipelines.extraction examples/parallel/maths/crewai/ -f crewai --existing-extraction output/det-extraction/crewai/maths.ttl  --out-root output/evaluation/det-generation/crewai/maths
python -m evaluation.pipelines.extraction examples/parallel/code-review/crewai/ -f crewai --existing-extraction output/det-extraction/crewai/code_review.ttl  --out-root output/evaluation/det-generation/crewai/code_review
python -m evaluation.pipelines.extraction examples/parallel/tech-blog/crewai/ -f crewai --existing-extraction output/det-extraction/crewai/tech_blog.ttl  --out-root output/evaluation/det-generation/crewai/tech_blog

# crewai - take salient metrics from json report

cat output/evaluation/det-generation/crewai/joke/crewai/crewai/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/crewai/meeting_assistant/crewai/crewai/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/crewai/travel_planning/crewai/crewai/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/crewai/maths/crewai/crewai/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/crewai/code_review/crewai/crewai/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/crewai/tech_blog/crewai/crewai/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'

# autogen - extract

oscin extract examples/parallel/joke/autogen/source_files     --framework autogen     --system-name joke --namespace "http://example.org/joke#"     --output output/det-extraction/autogen/joke.ttl
oscin extract examples/parallel/meeting-assistant-flow/autogen/source_files     --framework autogen     --system-name meeting_assistant_flow      --namespace "http://example.org/meeting_assistant_flow#"     --output output/det-extraction/autogen/meeting_assistant.ttl
oscin extract examples/parallel/travel-planning/autogen/source_files     --framework autogen     --system-name travel_planning      --namespace "http://example.org/travel_planning#"     --output output/det-extraction/autogen/travel_planning.ttl
oscin extract examples/parallel/maths/autogen/source_files     --framework autogen     --system-name maths --namespace "http://example.org/maths#"     --output output/det-extraction/autogen/maths.ttl
oscin extract examples/parallel/code-review/autogen/source_files     --framework autogen     --system-name code_review --namespace "http://example.org/code_review#"     --output output/det-extraction/autogen/code_review.ttl
oscin extract examples/parallel/tech-blog/autogen/source_files     --framework autogen     --system-name tech_blog --namespace "http://example.org/tech_blog#"     --output output/det-extraction/autogen/tech_blog.ttl

# autogen - evaluate

python -m evaluation.pipelines.extraction examples/parallel/joke/autogen/ -f autogen --existing-extraction output/det-extraction/autogen/joke.ttl  --out-root output/evaluation/det-generation/autogen/joke
python -m evaluation.pipelines.extraction examples/parallel/meeting-assistant-flow/autogen/ -f autogen --existing-extraction output/det-extraction/autogen/meeting_assistant.ttl  --out-root output/evaluation/det-generation/autogen/meeting_assistant
python -m evaluation.pipelines.extraction examples/parallel/travel-planning/autogen/ -f autogen --existing-extraction output/det-extraction/autogen/travel_planning.ttl  --out-root output/evaluation/det-generation/autogen/travel_planning
python -m evaluation.pipelines.extraction examples/parallel/maths/autogen/ -f autogen --existing-extraction output/det-extraction/autogen/maths.ttl  --out-root output/evaluation/det-generation/autogen/maths
python -m evaluation.pipelines.extraction examples/parallel/code-review/autogen/ -f autogen --existing-extraction output/det-extraction/autogen/code_review.ttl  --out-root output/evaluation/det-generation/autogen/code_review
python -m evaluation.pipelines.extraction examples/parallel/tech-blog/autogen/ -f autogen --existing-extraction output/det-extraction/autogen/tech_blog.ttl  --out-root output/evaluation/det-generation/autogen/tech_blog

# autogen - take salient metrics from json report

cat output/evaluation/det-generation/autogen/joke/autogen/autogen/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/autogen/meeting_assistant/autogen/autogen/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/autogen/travel_planning/autogen/autogen/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/autogen/maths/autogen/autogen/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/autogen/code_review/autogen/autogen/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/autogen/tech_blog/autogen/autogen/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'

# langgraph - extract

oscin extract examples/parallel/joke/langgraph/source_files     --framework langgraph     --system-name joke --namespace "http://example.org/joke#"     --output output/det-extraction/langgraph/joke.ttl
oscin extract examples/parallel/meeting-assistant-flow/langgraph/source_files     --framework langgraph     --system-name meeting_assistant_flow      --namespace "http://example.org/meeting_assistant_flow#"     --output output/det-extraction/langgraph/meeting_assistant.ttl
oscin extract examples/parallel/travel-planning/langgraph/source_files     --framework langgraph     --system-name travel_planning      --namespace "http://example.org/travel_planning#"     --output output/det-extraction/langgraph/travel_planning.ttl
oscin extract examples/parallel/maths/langgraph/source_files     --framework langgraph     --system-name maths --namespace "http://example.org/maths#"     --output output/det-extraction/langgraph/maths.ttl
oscin extract examples/parallel/code-review/langgraph/source_files     --framework langgraph     --system-name code_review --namespace "http://example.org/code_review#"     --output output/det-extraction/langgraph/code_review.ttl
oscin extract examples/parallel/tech-blog/langgraph/source_files     --framework langgraph     --system-name tech_blog --namespace "http://example.org/tech_blog#"     --output output/det-extraction/langgraph/tech_blog.ttl

# langgraph - evaluate

python -m evaluation.pipelines.extraction examples/parallel/joke/langgraph/ -f langgraph --existing-extraction output/det-extraction/langgraph/joke.ttl  --out-root output/evaluation/det-generation/langgraph/joke
python -m evaluation.pipelines.extraction examples/parallel/meeting-assistant-flow/langgraph/ -f langgraph --existing-extraction output/det-extraction/langgraph/meeting_assistant.ttl  --out-root output/evaluation/det-generation/langgraph/meeting_assistant
python -m evaluation.pipelines.extraction examples/parallel/travel-planning/langgraph/ -f langgraph --existing-extraction output/det-extraction/langgraph/travel_planning.ttl  --out-root output/evaluation/det-generation/langgraph/travel_planning
python -m evaluation.pipelines.extraction examples/parallel/maths/langgraph/ -f langgraph --existing-extraction output/det-extraction/langgraph/maths.ttl  --out-root output/evaluation/det-generation/langgraph/maths
python -m evaluation.pipelines.extraction examples/parallel/code-review/langgraph/ -f langgraph --existing-extraction output/det-extraction/langgraph/code_review.ttl  --out-root output/evaluation/det-generation/langgraph/code_review
python -m evaluation.pipelines.extraction examples/parallel/tech-blog/langgraph/ -f langgraph --existing-extraction output/det-extraction/langgraph/tech_blog.ttl  --out-root output/evaluation/det-generation/langgraph/tech_blog

# langgraph - take salient metrics from json report

cat output/evaluation/det-generation/langgraph/joke/langgraph/langgraph/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/langgraph/meeting_assistant/langgraph/langgraph/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/langgraph/travel_planning/langgraph/langgraph/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/langgraph/maths/langgraph/langgraph/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/langgraph/code_review/langgraph/langgraph/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
cat output/evaluation/det-generation/langgraph/tech_blog/langgraph/langgraph/report.json | jq '"\(.metrics.ttl_pairwise.individual_f1),\(.metrics.ttl_pairwise.property_f1),\(.metrics.ttl_pairwise.triple_f1),\(.metrics.ttl_pairwise.individual_precision),\(.metrics.ttl_pairwise.individual_recall)"'
