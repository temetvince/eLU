import express, { Request, Response } from 'express';
import cors from 'cors';
import { command } from './command.mjs';

const main = async () => {
   const app = express();
   const port = 3001;

   app.use(cors());

   app.get('/', async (req: Request, res: Response) => {
      try {
         const result = await command();
         res.send(result);
      } catch (error) {
         console.error(error);
         res.send('');
      }
   });

   app.listen(port, () => {
      console.log(`Server is running on http://localhost:${port}`);
   });
};

await main();
