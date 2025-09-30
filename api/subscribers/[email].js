// Vercel Serverless Function - 删除订阅者API代理
const fetch = require('node-fetch');

module.exports = async (req, res) => {
    // 设置CORS头
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, DELETE, OPTIONS');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    
    // 处理预检请求
    if (req.method === 'OPTIONS') {
        res.status(200).end();
        return;
    }
    
    const { email } = req.query;
    const targetUrl = `http://128.199.68.77/api/subscribers/${encodeURIComponent(email)}`;
    
    try {
        const response = await fetch(targetUrl, {
            method: req.method,
            headers: {
                'Content-Type': 'application/json',
            },
        });

        const data = await response.json();
        res.status(response.status).json(data);
    } catch (error) {
        console.error('API代理错误:', error);
        res.status(500).json({ 
            success: false, 
            error: '无法连接到后端服务器',
            details: error.message 
        });
    }
};
