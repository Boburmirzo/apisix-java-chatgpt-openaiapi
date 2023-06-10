package com.company.project.controllers;

import com.theokanning.openai.completion.chat.ChatCompletionChoice;
import com.theokanning.openai.completion.chat.ChatCompletionRequest;
import com.theokanning.openai.completion.chat.ChatMessage;
import com.theokanning.openai.completion.chat.ChatMessageRole;
import com.theokanning.openai.service.OpenAiService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
public class ChatCompletionController {

    @Value("${openai.model}")
    private String model;

    @Value("${openai.api.key}")
    private String openaiApiKey;

    /**
     * Creates a chat request and sends it to the OpenAI API
     * Returns the first message from the API response
     *
     * @param prompt the prompt to send to the API
     * @return first message from the API response
     */
    @PostMapping("/ai-chat")
    public String chat(@RequestBody String prompt) {
        OpenAiService service = new OpenAiService(openaiApiKey);

        final List<ChatMessage> messages = new ArrayList<>();
        final ChatMessage systemMessage = new ChatMessage(ChatMessageRole.SYSTEM.value(), prompt);
        messages.add(systemMessage);

        ChatCompletionRequest chatCompletionRequest = ChatCompletionRequest
            .builder()
            .model(model)
            .messages(messages)
            .build();

        List<ChatCompletionChoice> choices = service.createChatCompletion(chatCompletionRequest).getChoices();

        if (choices == null || choices.isEmpty()) {
            return "No response";
        }

        return choices.get(0).getMessage().getContent();
    }
}
