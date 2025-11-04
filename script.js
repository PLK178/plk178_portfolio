// Minimal JS for the demo contact form
const form = document.getElementById('contactForm');
if(form){
  form.addEventListener('submit', e => {
    e.preventDefault();
    const data = new FormData(form);
    alert(`Thanks, ${data.get('name')}! This is a demo form — your message was:\n${data.get('message')}`);
    form.reset();
  });
}