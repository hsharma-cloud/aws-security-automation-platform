############################################
# EventBridge Rule (AWS Config trigger)
############################################

resource "aws_cloudwatch_event_rule" "config_rule" {
  name        = "config-remediation-ssh"
  description = "Trigger Lambda when AWS Config detects non-compliance"

  event_pattern = jsonencode({
    source      = ["aws.config"],
    "detail-type" = ["Config Rules Compliance Change"]
  })
}

############################################
# EventBridge Target → Lambda
############################################

resource "aws_cloudwatch_event_target" "lambda_target" {
  rule      = aws_cloudwatch_event_rule.config_rule.name
  target_id = "SendToLambda"
  arn       = aws_lambda_function.remediate_ssh.arn
}

############################################
# Allow EventBridge to invoke Lambda
############################################

resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowExecutionFromEventBridge"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.remediate_ssh.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.config_rule.arn
}
