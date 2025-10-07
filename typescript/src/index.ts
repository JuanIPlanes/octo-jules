import express, { Request, Response } from 'express';

const app = express();
const PORT = 8080;

app.get('/', (req: Request, res: Response) => {
  res.send('Hello from TypeScript service!');
});

app.get('/health', (req: Request, res: Response) => {
  res.status(200).send('OK');
});

app.listen(PORT, () => {
  console.log(`Server starting on port ${PORT}`);
});
