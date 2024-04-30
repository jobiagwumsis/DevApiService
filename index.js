const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/api/rebate', (req, res) => {
    res.json({ success: true, message: 'Rebate details fetched successfully', data: { amount: '$100', validTill: '2024-12-31' } });
});

app.listen(PORT, () => console.log(`API running on http://localhost:${PORT}`));