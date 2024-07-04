document.addEventListener('DOMContentLoaded', () => {
    const currentTimeElement = document.getElementById('current-time');
    const alarmTimeInput = document.getElementById('alarm-time');
    const setAlarmButton = document.getElementById('set-alarm-btn');
    const alarmMessage = document.getElementById('alarm-message');
    let alarmTime = null;
    let alarmTimeout = null;

    function updateTime() {
        const now = new Date();
        const hours = String(now.getHours()).padStart(2, '0');
        const minutes = String(now.getMinutes()).padStart(2, '0');
        const seconds = String(now.getSeconds()).padStart(2, '0');
        currentTimeElement.textContent = `${hours}:${minutes}:${seconds}`;
        
        if (alarmTime && `${hours}:${minutes}` === alarmTime) {
            alarmMessage.classList.remove('hidden');
            clearTimeout(alarmTimeout);
            alarmTimeout = setTimeout(() => {
                alarmMessage.classList.add('hidden');
                alarmTime = null;
            }, 60000);
        }
    }

    setAlarmButton.addEventListener('click', () => {
        alarmTime = alarmTimeInput.value;
        alarmMessage.classList.add('hidden');
    });

    setInterval(updateTime, 1000);
});
