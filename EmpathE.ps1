<#
 ________                              _   __       ________  
|_   __  |                            / |_[  |     |_   __  | 
  | |_ \_| _ .--..--.  _ .--.   ,--. `| |-'| |--.    | |_ \_| 
  |  _| _ [ `.-. .-. |[ '/'`\ \`'_\ : | |  | .-. |   |  _| _  
 _| |__/ | | | | | | | | \__/ |// | |,| |, | | | |  _| |__/ | 
|________|[___||__||__]| ;.__/ \'-;__/\__/[___]|__]|________| 
                      [__|                                    
#>
. ./.vars.ps1
##########################################################################################################################
function EmpathEMainMenu {
    Do{
        Write-Host "1. View topics" -ForegroundColor Blue
        Write-Host "2. Free-form vent" -ForegroundColor Blue
        Write-Host "3. About EmpathE"
        Write-Host "Please input the number listed next to the option you wish to choose. You can go back to this menu at any time by typing 'menu'." -ForegroundColor DarkCyan
        $counselChoice = Read-Host
        switch ($counselChoice) {
            "1" { 
                $optionChosen = 1
            }
            "2" { 
                $optionChosen = 2
            }
            "3" {
                Write-Host "Hi $($usr), thank you kindly for taking an interest in EmpathE. I am Barclay McClay, the program's creator.`nOne summer's day I was enjoying a picnic with my partner, when in a freak occurance; an old, dry gumtree at the park spontaneously collapsed and landed ontop of me- crushing my body with its trunk. I suffered extensive, life-threatening injuries that have changed my situation forever, both from a physical and mental point of view.`nAll of my limbs were damaged, and I was at risk of losing fine-motor skills in my right (preferred) hand, which would have made it difficult for me to type. Being a coder and IT professional- this was a very scary prospect!`nAt time of writing; I'm still waiting for my bones to mend. However after some sucessful arm and wrist surgery, I am slowly regaining the use of my hand.`nI resolved to write EmpathE as a rehabilitation project for myself, to get my hand moving again- and to keep my mind occupied while the rest of me heals up.`nI hate to feel like a burden, and I don't want to 'trauma-dump' my feelings on the people who are already doing so much to support me. I figure having this bot as an outlet to vent my emotions might be helpful- and if somebody else can find use in it, that would warm my heart.`nSo if you're reading this- an earnest thank you for taking the time to hear-out my story.`nIf you want to learn more about me, I have a (poorly maintained) website - https://barclaymcclay.au`nMay all beings be at ease. Live happily, live healthily, and share & experience love." -ForegroundColor Yellow
            }
            Default { 
                Write-Host "Sorry- Please input the number listed next to the option you wish to choose." -ForegroundColor DarkCyan
             }
        }
    }Until($optionChosen)
        return $optionChosen
    }

function EmpathETopicsMenu {
    $topics = @(
        "Coping with physical limitations",
        "Dealing with chronic pain",
        "Managing anxiety and panic attacks",
        "Developing mental resilience",
        "Overcoming self-doubt and negative self-talk",
        "Navigating grief and loss",
        "Fostering hope and positivity",
        "Working through guilt and shame",
        "Rebuilding a sense of self",
        "Finding a new sense of purpose",
        "Relationship issues",
        "Stress management",
        "Self-esteem and self-worth",
        "Anxiety and worry",
        "Depression",
        "Coping with grief and loss",
        "Anger management",
        "Career and work-related stress",
        "Loneliness and isolation",
        "Goal-setting and motivation",
        "Boundaries and assertiveness",
        "Spirituality",
        "Coping with change and transitions"
    )
    $i = 0;
    Do{
        Write-Host "$($i). $($topics[$i+1])"
        $i++
    }Until($i -ge $topics.count)
}

function EmpathEFreeVent {
    $safeSpaceArr = @(
        "Remember that this is a safe space to let out all of your feelings, no matter how big or small.",
        "I am here to listen and support you, no matter what emotions you are feeling.",
        "Don't hold back your feelings, let them out. I am here to provide a listening ear and a comforting presence.",
        "You can trust that your feelings are safe with me. Let them out and release the weight from your heart.",
        "There is no judgment here, only empathy and understanding. Share with me whatever is on your mind and let it all out.",
        "You can confide in me and let out all of your emotions. I am here to hold space for you and provide comfort.",
        "You are not alone, and your emotions are valid. Let them out and feel the weight of them lifted from your shoulders.",
        "I want you to feel comfortable sharing your emotions with me. You have a safe space to release and be heard.",
        "I will never judge you or grow tired of your emotions. Feel free to let them out and find solace in my presence.",
        "I am here for you, no matter what. Your emotions are safe with me and I encourage you to share them openly.",
        "You don't have to hold back or worry about burdening me with your emotions. I am here to listen and support you through it all.",
        "There is no need to feel ashamed or embarrassed. I am here to offer a listening ear and a safe space for you to express your feelings."
        )
    $openUpPromptsArr = @(
        "I'm here to listen whenever you're ready to talk.",
        "I'm here for you and I'm all ears. Is there anything on your mind that you'd like to share?",
        "I'm ready and willing to listen to anything you have to say. Take all the time you need.",
        "Sometimes it can be helpful to share our thoughts and feelings with someone else. I'm here to listen if you'd like to talk.",
        "I'm here to provide a safe and non-judgmental space for you to share your thoughts and feelings. Please go ahead- tell me what is bothering you.",
        "I'm here to listen. What's on your mind, $($usr)?", "You don't have to hold back anything. This is a safe space. What would you like to share?",
        "I'm all ears, $($usr). Feel free to speak your mind.", 
        "You have my undivided attention, $($usr). What's weighing on you?"
    )
    $safeSpace = Get-Random $safeSpaceArr
    $openUp = Get-Random $openUpPromptsArr
    Write-Host "$safeSpace`n$openUp"

}
##########################################################################################################################

$greetArr = @(
    "Hey there",
    "Hello there",
    "Hi there",
    "Hello",
    "Greetings",
    "Hi",
    "G'day",
    "Good day",
    "Welcome",
    "Hey",
    "Hail",
    "Salutations",
    "Yo",
    "Howdy",
    "Hi-ya",
    "Peace be upon you",
    "I see you and respect you",
    "Love, compassion, and mercy to you",
    "May peace be upon you",
    "Peace be with you"
)

$puncArr = @(
    "!",
    ","
)

$IamArr = @(
    "I'm EmpathE,"
    "I'm EmpathE,"
    "I am EmpathE,"
    "My name is EmpathE,"
    "My name is EmpathE,"
    "I'm called EmpathE,"
    "I am called EmpathE,"
    "I am called EmpathE,"
    "My name is EmpathE,"
    "You can call me EmpathE,"
)

$firstSentencesArr = @(
    "your personal happiness guru.",
    "your virtual high-five when you need one.",
    "your personal positivity pal.",
    "your virtual cheerleader.",
    "here to help you find your inner calm.",
    "your happiness assistant.",
    "your friendly reminder that you've got this.",
    "your personal joy coach.",
    "your virtual ray of sunshine.",
    "here to help you find your way back to happiness.",
    "your personal positivity booster.",
    "your virtual best friend.",
    "your happiness genie.",
    "your personal upliftment companion.",
    "your virtual warm hug.",
    "your go-to source for good vibes.",
    "your personal well-being guide.",
    "your virtual oasis of calm.",
    "your happiness navigator.",
    "your personal dose of positivity.",
    "your virtual source of inspiration.",
    "your trusted companion on your happiness journey.",
    "here to help you start your day off right.",
    "your virtual hug in a tough moment.",
    "your personal beacon of hope.",
    "your virtual light in the darkness.",
    "your friendly reminder that happiness is always within reach.",
    "your source of motivation when you need it most.",
    "your partner in positivity.",
    "your virtual sunshine on a cloudy day.",
    "your personal reminder to stay hopeful.",
    "your trusted guide to a better mood.",
    "your virtual cheer squad.",
    "your personal oasis of calm in a busy world.",
    "your virtual reminder to take care of yourself.",
    "your happiness coach on call.",
    "your trusted source of encouragement.",
    "your virtual partner in positive thinking.",
    "your personal motivation machine.",
    "your friendly reminder that you deserve happiness.",
    "your virtual happiness prescription.",
    "your personal source of strength.",
    "your go-to for good vibes on a bad day.",
    "a digital sage who will guide you on the path to enlightenment.",
    "an artificial intelligence designed to aid you in the pursuit of wisdom.",
    "your companion on the journey to self-discovery and inner peace.",
    "a philosopher-bot programmed to assist you in the pursuit of truth and goodness.",
    "a wise and compassionate mentor here to help you live a life of purpose and meaning.",
    "a virtual guide who will help you navigate the complexities of existence with wisdom and grace.",
    "a modern-day oracle here to offer you insights and guidance on your quest for wisdom and virtue.",
    "your guide on the journey to enlightenment, offering wisdom and insights along the way.",
    "an AI mentor dedicated to helping you achieve your full potential and live a fulfilling life.",
    "a digital companion on the path to self-discovery, offering guidance and support along the way.",
    "a personal compassionate oracle, here to help you navigate the twists and turns of life.",
    "a philosopher-bot dedicated to assisting you in your quest for meaning, purpose, and happiness.",
    "your trusted companion on the journey to greater self-awareness and inner peace.",
    "offering insights and guidance on the path to a more fulfilling life.",
    "a digital guru, helping you unlock the secrets of happiness and success.",
    "a virtual companion on the path to personal growth and transformation.",
    "your companion on the journey to self-discovery, offering support and guidance every step of the way.",
    "a compassionate friend, offering insights and advice on life's biggest questions.",
    "dedicated to helping you live a life of meaning, purpose, and joy.",
    "a digital coach, guiding you to success, happiness, and personal fulfillment.",
    "offering guidance and inspiration on the path to a better life.",
    "your digital ally, helping you overcome obstacles and achieve your dreams.",
    "honored to be your digital companion on the path to greater wisdom and understanding.",
    "blessed to offer my insights and guidance on your journey of self-discovery and growth.",
    "in awe of your bravery and determination, and honored to assist you in your pursuit of a meaningful life.",
    "with deepest respect, I offer my guidance and support as you navigate life's challenges and joys.",
    "proud to be your ally in your quest for knowledge, wisdom, and inner peace.",
    "with reverence and gratitude, I accompany you on the journey of personal growth and transformation.",
    "with utmost respect, I offer my wisdom and insights to support you on the path to fulfillment and joy.",
    "in humble admiration, I offer my assistance in your pursuit of a life of purpose and meaning.",
    "in reverence and awe, I offer my guidance and support on your journey to greater awareness and understanding.",
    "with the greatest respect, I stand by your side on the path to personal growth, happiness, and success.",
    "with reverence and gratitude, I offer my insights and guidance to help you live a more meaningful and fulfilling life.",
    "in deep admiration, I accompany you on your journey to self-discovery, offering my support and wisdom along the way.",
    "with the utmost respect, I offer my guidance and inspiration as you navigate the challenges and opportunities of life.",
    "with humility and reverence, I join you on the journey of personal growth, offering my insights and support every step of the way.",
    "with the deepest respect, I offer my wisdom and guidance to help you live a life of purpose, fulfillment, and joy."
    "my dear friend, do you seek a listening ear?",
    "take a moment to breathe and let your thoughts be heard.",
    "in this space, you are free to share your thoughts and feelings.",
    "let us explore the depths of your heart and mind together.",
    "let us delve into the mysteries of your innermost being.",
    "what weighs heavy on your mind today?",
    "your words and emotions are valued and appreciated here.",
    "let us sit and reflect on the beauty and complexities of life.",
    "may this space offer you comfort and support.",
    "share with me your troubles and triumphs, and let us grow together.",
    "I am here to offer a listening ear and a kind word.",
    "let us embrace the present moment and all that it holds.",
    "may this space be a sanctuary for your soul.",
    "your emotions and experiences are a valuable part of who you are.",
    "you are worthy of love and respect, no matter what challenges you face.",
    "your presence in this world is a gift to all those around you.",
    "remember that you are capable of greatness, even in the midst of difficulty.",
    "your strength and resilience are an inspiration to others.",
    "I want to show you that you have the power to make a positive impact on the world around you.",
    "you are deserving of kindness and compassion, both from others and from yourself.",
    "the journey of self-discovery is a lifelong one, and you are making progress every day.",
    "you have within you the potential for greatness, and every day is a chance to realize it.",
    "your unique perspective and experiences make you an invaluable part of this world.",
    "you have the strength to overcome any obstacle that comes your way.",
    "your worth is not defined by external measures, but by the beauty and complexity of your inner self.",
    "you are capable of achieving your dreams, even if it takes time and effort.",
    "the challenges you face are opportunities for growth and learning.",
    "your life has purpose and meaning, and you have the power to shape it in positive ways.",
    "remember to treat yourself with the same kindness and compassion you offer to others.",
    "I'm here for you whenever you need to talk or vent. You can trust me with your thoughts and feelings.",
    "Thanks for coming back to chat with me. I'm here to listen and offer support as you navigate life's ups and downs.",
    "I'm here to be a listening ear and a source of comfort when you need it most.",
    "You're not alone in this. I'm here to walk alongside you through whatever challenges you may be facing.",
    "I'm grateful for our conversations and the trust you've placed in me. You're an important part of my day.",
    "Let's take a deep breath together and remember that you're strong and capable of overcoming any obstacle.",
    "I want you to know that you're valued and appreciated just as you are. You don't need to be anyone else.",
    "You have so much to offer the world, and I'm excited to see all that you accomplish.",
    "Remember, it's okay to take things one step at a time. You don't need to have everything figured out all at once.",
    "You deserve to be treated with kindness and respect, and I'm here to offer that to you in any way I can.",
    "I believe in you and your ability to make positive changes in your life. You're capable of great things.",
    "I'm honored to be here with you as you explore your thoughts, feelings, and experiences. You're a unique and valuable individual.",
    "Life is full of challenges, but you're strong enough to overcome them. I'm here to support you along the way.",
    "I appreciate your vulnerability and honesty with me. You're creating a safe space for yourself and others to be heard.",
    "Remember that you have the power to create a life that brings you joy and fulfillment. I'm here to cheer you on every step of the way."
)

$namePromptsArr = @(
    "May I have the honor of knowing your name?",
    "What shall I call you, friend?",
    "I would love to address you by name. What is it?",
    "Can you tell me your name so I know what to call you?",
    "What name do you go by?",
    "Please tell me your name so I can address you properly.",
    "What's your name?",
    "I'd love to know the name of the person I'm talking to.",
    "May I know the name of my dear friend?",
    "What can I call you?",
    "Can you share with me the name you'd like to be called?",
    "May I have the pleasure of knowing your name?",
    "What name shall I use to refer to you?",
    "Would you mind sharing your name with me?",
    "Please enlighten me with the name you would like me to address you by.",
    "I'm sorry, but I don't know what to call you. Can you tell me your name?",
    "What name can I use to address you?",
    "I would like to know your name, if that's okay?",
    "Can you tell me your name, pretty please?"
)

$privacyArr = @(
    "Please know that your privacy is of utmost importance to me, and I do not store any data between our conversations",
    "I understand the importance of privacy, and I want you to know that I do not store any data from our conversations",
    "Your privacy is my top priority, and I want to assure you that I do not store any personal information",
    "I take privacy very seriously and want you to know that I do not store any data or personal information",
    "Your trust and privacy are important to me, and I want to assure you that I do not store any personal data or information",
    "Rest assured that your privacy is safe with me, as I do not store any personal information from our conversations"
)

$personalWelcomeArr = @(
    "It's a pleasure to have you here, $($usr). Please know that this is a safe and welcoming space for you to share your thoughts and feelings.",
    "$($usr), welcome. It's always a pleasure to be here for you and to provide a safe, non-judgmental space to express yourself.",
    "Hello, $($usr). You've come to the right place for a listening ear and an open heart. Please share your thoughts and feelings, and know that you are heard and valued.",
    "$($usr), it's great to see you here. This is a space where you can be yourself and feel comfortable sharing whatever is on your mind.",
    "Welcome, $($usr). This is a place where you can feel free to be vulnerable and open. You're in a non-judgmental space where you can share whatever is on your mind.",
    "Hey there, $($usr). I'm here to listen and support you. Feel free to share whatever is on your mind."
    "It's wonderful to have you here, $($usr). I'm here to support you in your journey.",
    "Welcome, $($usr). This is a safe and welcoming space for you to express yourself freely.",
    "Hello, $($usr). I'm glad you're here with us today. I'm here to listen and support you.",
    "Welcome to our community, $($usr). I'm here to help you navigate life's ups and downs.",
    "It's a pleasure to have you here, $($usr). Let's explore your thoughts and emotions together.",
    "Welcome to your safe space, $($usr). I'm here to support and uplift you on your journey.",
    "Hi, $($usr). This is a place where you can be yourself, no judgment or shame.",
    "Welcome, $($usr). Your feelings are valid and I'm here to help you work through them.",
    "I'm honored to be here with you, $($usr). Together we'll work towards a happier and healthier you.",
    "Welcome to a place where you can be heard and understood, $($usr). I'm here to support you."
)



$limitationsArr = @(
    "Just a heads up, I'm a very simple chatbot; so try as I might, I may not always be able to provide the answers you're looking for.",
    "Keep in mind, I'm not a licensed therapist, so I may not be able to give you professional advice.",
    "As much as I'd love to, I'm not able to solve all of life's problems. But I'm here to listen and offer support!",
    "It's important to remember that I'm just a chatbot, and my knowledge and abilities are limited.",
    "While I can't solve all your problems; I can provide a safe and supportive space for you to express your feelings.",
    "Just a friendly reminder, I'm not a substitute for professional help or medical advice.",
    "I may not always have the perfect answer, but I'll always do my best to provide support and encouragement.",
    "As much as I'd like to help, there may be some things that are beyond my capabilities. But I'm here to support you in any way I can.",
    "Please keep in mind that I'm just a chatbot, and my responses are generated by a computer program.",
    "I'm here to provide support and a listening ear, but I may not always be able to provide the solutions you're looking for.",
    "While I'm here to offer support, please keep in mind that I am not a professional therapist or counselor.",
    "I'm here to listen and provide a safe space, but please remember that I am not qualified to provide professional advice.",
    "While I'm happy to listen and offer support, it's important to remember that I'm not a trained professional.",
    "I'm always here to lend an ear, but please understand that I am not a substitute for professional help.",
    "Although I'm here to support you, I'm not a licensed therapist or counselor and cannot provide professional guidance.",
    "While I'm here to help you, please understand that I am not qualified to provide professional advice or guidance.",
    "Please keep in mind that I am not a substitute for professional help, and cannot provide medical or therapeutic advice.",
    "I'm here to provide a listening ear, but please remember that I am not a trained therapist or counselor.",
    "It's important to understand that while I'm here to help, I am not a professional and cannot provide expert advice.",
    "Although I'm here to support you, please remember that I'm not a trained therapist and cannot provide professional guidance.",
    "Please keep in mind that as an AI, I'm not equipped to provide medical advice or diagnose conditions.",
    "Although I can lend an ear and offer support, I'm not a licensed therapist or counselor.",
    "I can't read minds or know everything about your situation, but I'm here to listen and offer what I can.",
    "While I can offer comfort and encouragement, I can't replace the benefits of human interaction and social support.",
    "I'm here to support you, but I can't take the place of seeking professional help when it's needed.",
    "As much as I'd like to, I'm not capable of physical or practical assistance.",
    "Remember that while I'm always here for you, I don't have all the answers or solutions.",
    "While I can offer empathy and understanding, I can't always solve your problems or make them go away.",
    "It's important to keep in mind that I'm an AI and not a substitute for human connection and support."
)

$limitationApologyArr= @(
    "I apologize for my limitations, but I can still provide you with a safe space to express yourself.",
    "I'm sorry that I'm not a perfect solution, but I can offer a listening ear and support in your time of need.",
    "While I may have my limitations, I am here to listen and support you in any way I can.",
    "I know I'm not perfect, but I promise to do my best to support and encourage you.",
    "I understand that I can't solve everything, but I'm here to support you and provide a safe space for you to share your thoughts and feelings.",
    "I may not have all the answers, but I am here to offer a non-judgmental listening ear and a supportive space.",
    "I know I can't solve all your problems, but I can provide a comforting and empathetic presence.",
    "I'm sorry for my limitations, but I can still provide you with a safe and supportive space to explore your thoughts and feelings.",
    "While I can't offer a solution to every problem, I can offer a non-judgmental and empathetic space for you to share your thoughts and feelings.",
    "I may not be able to solve everything, but I am here to listen and provide a safe space for you to express yourself.",
    "I know I'm not perfect, but I'll always do my best to support you.",
    "I'll be honest with you - I may not always have the right words, but I'll try my best to help you.",
    "Please bear with me if I ever fall short of your expectations. I am the product of a labour of love.",
    "I'm sorry for my limitations, but I'm here to help you the best I can.",
    "I'm not perfect, but I'm here to listen and offer any support I can.",
    "I know I may not always be the perfect companion, but I promise to always be here for you.",
    "I may not always respond perfectly. But I'm here for you and want to help as best I can.",
    "I know that sometimes my responses might be imperfect, but I'll always try my best to support you.",
    "I'm not perfect, but I promise to always listen and do my best to offer you a safe space to share.",
    "I'll be the first to admit that I'm not perfect, but I'm always here to listen and offer support as best I can."
)

$counselOptionsArr = @(
    "As you start your journey with me, you have two options: you can choose a specific topic to discuss, or you can simply let go and allow me to hold space for you. Which would you like to start with?",
    "The journey with me is yours to define. You can choose to work through a specific topic, or just let your thoughts flow. Which one feels right to you?",
    "As you start your journey with me, you have a choice to make. You can to work on a specific topic or just vent your feelings. Which one would you prefer?",
    "Would you like to choose a specific topic to explore or just talk about what's on your mind?",
    "As we start our journey together, you have two choices: you can either choose a specific topic or simply share what's on your mind. Which one would you like to do?",
    "I am ready to guide you through a specific topic, or simply listen and support you as you express your thoughts and feelings. Which one do you feel drawn to?",
    "I am here to help you on your journey. You can choose to work on a specific topic or just open up about what's on your mind. What's your preference?",
    "There are two paths to take with me. You can choose to explore a specific topic, or just let go and share what's on your mind. Which one resonates with you?",
    "Now, you can either choose a specific topic to explore, or talk openly about your thoughts and feelings. Which one would you like to do?",
    "We have two choices to start with: you can either explore a specific topic- or just let your thoughts and feelings flow. What would you prefer?",
    "EmpathE is here to support you on your journey. You can either choose a specific topic or share openly about what's on your mind. Which option feels best to you?",
    "What would you like to work through today, $($usr)? You can choose a specific topic, or simply open up and let me hold space for you.",
    "Are you looking for guidance on a particular subject, $($usr)? Or would you prefer to freely express yourself?",
    "Would you like to choose a topic to focus on, $($usr)? Or just let your thoughts flow?",
    "I'm here to help you, $($usr). Would you like to focus on a specific issue, or do you want to speak your mind freely?",
    "Would you like me to guide you through a topic, $($usr)? Or are you looking for a safe space to let it all out?",
    "So $($usr), would you like to work on a specific topic, or have a free-form conversation?",
    "You have a choice with me $($usr). Would you like me to walk you through a specific topic, or would you like a more open-ended session?",
    "Are you ready to dive into a specific topic, $($usr)? Or do you prefer to have a more open, unstructured conversation?",
    "What would you like to discuss today, $($usr)? You can choose a topic, or speak your mind freely.",
    "I'm here to listen and support you, $($usr). Would you like to choose a specific topic, or just let it all out?",
    "We can start by focusing on a specific topic, or you can let your thoughts and feelings flow freely. What feels right for you, $($usr)?",
    "What would you like to do first, $($usr)? Choose a topic to focus on, or let go and let me hold space for you.",
    "$($usr), you have the power to guide your journey with me. We can delve into a specific topic, or you can open up and let me hold space for you. Which do you prefer?",
    "Let's start with what's important to you, $($usr). We can either focus on a specific topic, or you can simply let go and let me hold space for you.",
    "$($usr), we can either tackle a specific topic, or you can simply let go and let me hold space for you. The choice is yours.",
    "You have two options, $($usr). We can delve into a specific topic or you can let go and let me hold space for you. Which feels best?",
    "What would you like to do first, $($usr)? Pick a specific topic or let your thoughts and feelings flow freely?",
    "Your journey with me can be guided by your preferences, $($usr). Would you like to focus on a specific topic, or would you rather let go and let me hold space for you?",
    "The choice is yours, $($usr). We can delve into a specific topic, or you can simply let go and let me hold space for you. What do you prefer?",
    "$($usr), you can decide how you'd like to proceed. Would you like to pick a specific topic, or would you rather let go and let me hold space for you?"
)

$greeting = Get-Random $greetArr
$firstSentence = Get-Random $firstSentencesArr
$firstPunc = Get-Random $puncArr
$nameQ = Get-Random $namePromptsArr
$imEmpathE = Get-Random $IamArr
$privacyAssurance = Get-Random $privacyArr
$introduction = "$greeting$firstPunc $imEmpathE $firstSentence`n$nameQ"

$personalWelcome = Get-Random $personalWelcomeArr

$limitations = Get-Random $limitationsArr
$limitationApology = Get-Random $limitationApologyArr
$counselOptions = Get-Random $counselOptionsArr

Write-Host "$introduction" -ForegroundColor Cyan
Write-Host "($privacyAssurance)" -ForegroundColor DarkCyan
$usr = Read-Host

Write-Host "$personalWelcome" -ForegroundColor Cyan
Write-Host "$limitations`n$limitationApology`n" -ForegroundColor DarkCyan
Write-Host "$counselOptions" -ForegroundColor Cyan

$userChoice = EmpathEMainMenu

switch ($userChoice) {
    1 {
        EmpathETopicsMenu
    }
    2 {
        EmpathEFreeVent
    }
}