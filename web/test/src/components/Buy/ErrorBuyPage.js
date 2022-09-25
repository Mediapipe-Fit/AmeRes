import * as React from "react";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Modal from "@mui/material/Modal";
import { Button } from "@mui/material";

const style = {
  position: "absolute",
  top: "50%",
  left: "50%",
  transform: "translate(-50%, -50%)",
  width: 400,
  bgcolor: "background.paper",
  border: "2px solid #000",
  boxShadow: 24,
  p: 4,
};

const ErrorBuyPage = (props) => {

    const handleValid = ()=>{
        props.onValid(false);
    }
  return (
    <div>
      <Modal
        open={props.open}
        onClose={props.handleClose}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style}>
        <Typography id="modal-modal-title" variant="h6" component="h2">
            <p>갯수를 잘못 입력했습니다. 다시 확인 해주세요.(입력한 rec의 갯수가 보유한 rec보다 많은지, 자산이 부족한지 확인해주세요.)</p>
          </Typography>
          <Typography id="modal-modal-description" sx={{ mt: 2 }}>
          </Typography>
          <Button variant="contained" onClick={handleValid}>확인</Button>
        </Box>  
      </Modal>
    </div>
  );
};

export default ErrorBuyPage;
