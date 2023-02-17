<#
 ________                              _   __       ________  
|_   __  |                            / |_[  |     |_   __  | 
  | |_ \_| _ .--..--.  _ .--.   ,--. `| |-'| |--.    | |_ \_| 
  |  _| _ [ `.-. .-. |[ '/'`\ \`'_\ : | |  | .-. |   |  _| _  
 _| |__/ | | | | | | | | \__/ |// | |,| |, | | | |  _| |__/ | 
|________|[___||__||__]| ;.__/ \'-;__/\__/[___]|__]|________| 
                      [__|                                    
#>

##########################################################################################################################
function Test-InternetConnection {
    $result = Test-NetConnection www.google.com -Port 80
    if ($result.TcpTestSucceeded) {
        return $true
    }
    else {
        return $false
    }
}
##########################################################################################################################

$greet = @(
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
    "Yo"
)

$punc = @(
    "! ",
    ", "
)

$Iam = @(
    "I'm EmpathE, "
    "I'm EmpathE, "
    "I am EmpathE, "
    "My name is EmpathE, "
    "My name is EmpathE, "
    "I'm called EmpathE, "
    "I am called EmpathE, "
    "I am called EmpathE, "
    "My name is EmpathE, "
)

$firstSentences = @(
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

$namePrompts = @(
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

$followupQuestions = @(
    "What's on your mind today?",
    "Let's make today awesome! What's on your mind?",
    "How can I help you feel your best?",
    "Ready to conquer the day? What's your first step?",
    "How can I assist you in finding peace of mind?",
    "Let's work together to make today great! What's your goal?",
    "How can I support you in achieving your dreams?",
    "What can I do to make you smile?",
    "How can I brighten your day?",
    "Let's get started! What's your first challenge?",
    "What can I do to lift your spirits?",
    "How can I make your day better?",
    "What can I do to grant your wish today?",
    "How can I help you feel good today?",
    "What can I do to make you feel loved?"
    "You have a safe space here to express yourself freely and openly.",
    "Don't hold back - let your emotions and thoughts flow freely.",
    "This is a place where you can feel free to share your deepest thoughts and feelings.",
    "I encourage you to speak your mind and express your emotions.",
    "I am here to listen and support you, no matter what you're feeling or going through.",
    "You can be completely honest and open here - I'm here to support you.",
    "You don't have to hide your emotions or thoughts - this is a space where you can express yourself freely.",
    "Take a deep breath and let it all out. I'm here to listen and support you.",
    "No matter how you're feeling, know that you're in a safe space where you can share it without judgment.",
    "Feel free to be vulnerable and open here - I am here to support you.",
    "I encourage you to share your thoughts and feelings freely, without holding back.",
    "You don't have to be strong all the time - it's okay to let your guard down and share your emotions.",
    "Let go of any hesitation or fear and let yourself be heard. I'm here to listen.",
    "Speak your truth and let it be heard - I'm here to support you every step of the way.",
    "Don't be afraid to open up and share your thoughts and feelings. This is a safe and supportive space."
)

$privacy = @(
    "Please know that your privacy is of utmost importance to me, and I do not store any data between our conversations.",
    "I understand the importance of privacy, and I want you to know that I do not store any data from our conversations.",
    "Your privacy is my top priority, and I want to assure you that I do not store any personal information.",
    "I take privacy very seriously and want you to know that I do not store any data or personal information.",
    "Your trust and privacy are important to me, and I want to assure you that I do not store any personal data or information.",
    "Rest assured that your privacy is safe with me, as I do not store any personal information from our conversations."
)

$greeting = Get-Random $greet
$firstSentence = Get-Random $firstSentences
$firstPunc = Get-Random $punc
$nameQ = Get-Random $namePrompts
$imEmpathE = Get-Random $Iam
$privacyAssurance = Get-Random $privacy
$introduction = "$greeting$firstPunc $imEmpathE $firstSentence`n$nameQ"
Write-Host "($privacyAssurance)" -ForegroundColor DarkCyan
Write-Host "$introduction" -ForegroundColor Cyan

$usr = Read-Host
 