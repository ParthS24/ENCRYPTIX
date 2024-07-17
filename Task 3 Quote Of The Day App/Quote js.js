document.addEventListener('DOMContentLoaded', () => {
    const quotes = [
        "The best way to predict the future is to invent it.",
        "Life is 10% what happens to us and 90% how we react to it.",
        "The only limit to our realization of tomorrow is our doubts of today.",
        "The purpose of our lives is to be happy.",
        "Get busy living or get busy dying.",
        "You have within you right now, everything you need to deal with whatever the world can throw at you.",
        "Believe you can and you're halfway there.",
        "Your time is limited, don't waste it living someone else's life."
    ];

    const quoteText = document.getElementById('quote-text');
    const newQuoteButton = document.getElementById('new-quote');

    newQuoteButton.addEventListener('click', () => {
        const randomIndex = Math.floor(Math.random() * quotes.length);
        quoteText.textContent = quotes[randomIndex];
    });
});
